import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  List nck = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> tLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）

  int ti;

  List limits = [];

  List tList0 = [];
  int lineNum;
  lineNum = 1;
  await for (String line in tLines) {
    lineNum = lineNum + 1;
    ti = int.parse(line);
    tList0.add(ti);
    limits.add(ti + nck[2]);

    if (lineNum > nck[0]) break; // ここの場所！
  }
  List tList = tList0..sort((a, b) => a.compareTo(b));

  // print(tList);
  int count = 1; // バスの数
  int s = 0;
  int numb = 0; // ひとの数
  // print(tList);
  for (int j = 1; j < nck[0]; j++) {
    if (tList[j] >= tList[s] && tList[j] <= tList[s] + nck[2]) {
      numb++;
      if (numb == nck[1]) {
        count++;
        s = j;
        numb = 0;
      }
    } else {
      count++;
      s = j;
      numb = 0;
    }
  }

  print(count);
}
