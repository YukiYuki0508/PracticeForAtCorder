// sort
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import "dart:math";

Future main() async {
  int n = int.parse(stdin.readLineSync());
  Stream<String> xyLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  List xyi = [];
  List xy = [];
  int lineNum;
  lineNum = 1;
  await for (String line in xyLines) {
    lineNum = lineNum + 1;

    xyi = line.split(" ").map((x) => double.parse(x)).toList();
    xy.add(xyi);
    if (lineNum > n) break; // ここの場所！
  }
  // print(xy);
  List diff = [];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      var sa = (xy[i][0] - xy[j][0]) * (xy[i][0] - xy[j][0]) +
          (xy[i][1] - xy[j][1]) * (xy[i][1] - xy[j][1]);

      diff.add(sa);
    }
  }
  List sortDiff = diff..sort((b, a) => a.compareTo(b)); // 大きい順にsort
  double ans = (sortDiff[0] == 0.0) ? 0.00 : sqrt(sortDiff[0]);
  print(ans);
}
