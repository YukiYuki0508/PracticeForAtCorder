import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  List nm = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> abLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  int lineNum;
  lineNum = 1;
  List ab = [];
  List abi = [];
  await for (String line in abLines) {
    lineNum = lineNum + 1;

    abi = line.split(" ").map((x) => int.parse(x)).toList();
    ab.add(abi);

    if (lineNum > nm[1]) break; // ここの場所！
  }

  List bucket = [];
  for (int i = 0; i < nm[0]; i++) {
    bucket.add(0);
  }

  for (int i = 0; i < nm[1]; i++) {
    if ([ab[i][0]] == [ab[i][1]]) continue;
    bucket[ab[i][0] - 1]++;
    bucket[ab[i][1] - 1]++;
  }
  // print(bucket);
  for (int i = 0; i < nm[0]; i++) {
    print(bucket[i]);
  }
}
