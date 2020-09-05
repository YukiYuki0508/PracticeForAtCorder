import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  List nl = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> sLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  int lineNum;
  lineNum = 1;
  List s = [];
  await for (String line in sLines) {
    lineNum = lineNum + 1;
    s.add(line);

    if (lineNum > nl[0]) break; // ここの場所！
  }
  List sortS = s..sort(); // アルファベットsort
  String count = "";
  sortS.forEach((num0) => count += num0);

  // print(sortS);
  print(count);
}
