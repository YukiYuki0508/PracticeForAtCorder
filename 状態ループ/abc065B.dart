import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  int n = int.parse(stdin.readLineSync());
  Stream<String> aLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  int lineNum;
  lineNum = 1;
  List s = [];
  List a = [];
  await for (var line in aLines) {
    lineNum = lineNum + 1;
    a.add(int.parse(line));
    if (lineNum > n) break; // ここの場所！
  }

  int ans = -1;
  int j = 0;

  int c = a[0];
  for (int i = 1; i < n; i++) {
    if (c == 2) {
      print(i);
      return;
    }
    c = a[c - 1];
  }
  print(-1);
}
