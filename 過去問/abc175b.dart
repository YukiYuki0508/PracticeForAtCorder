import 'dart:convert';
import 'dart:io';
import 'dart:async';
import "dart:math";

Future main() async {
  List nd = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> xyLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  List<int> xy = [];
  int count;
  count = 0;
  int lineNum;
  lineNum = 1;
  await for (String line in xyLines) {
    lineNum = lineNum + 1;

    xy = line.split(" ").map((x) => int.parse(x)).toList();
    // print(xy[0]);
    // print(xy[1]);
    double dist = sqrt((xy[0] * xy[0]) + (xy[1] * xy[1]));
    if (dist <= nd[1]) {
      count++;
    }
    if (lineNum > nd[0]) break; // ここの場所！
  }
  print(count);
}
