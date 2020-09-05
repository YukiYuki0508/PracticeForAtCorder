import 'dart:convert';
import 'dart:io';
import 'dart:async';
import "dart:math";

makeList0(List c) {
  List b = [];
  for (int l = 0; l < 2; l++) {
    for (int m = 0; m < c.length; m++) {
      List d = [c[m], l];
      b.add(d);
    }
  }
  return b;
}

makeList(List c) {
  List b = [];

  List cc = [];
  for (int l = 0; l < 2; l++) {
    for (int m = 0; m < c.length; m++) {
      List d = [];
      List fe = [...c[m], l];

      cc.add(fe);
    }
  }
  b.add(cc);

  List ans = [...b];
  return b[0];
}

Future main() async {
  List hwk = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> cLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  List yn = []; //yes=1,no=0
  int count;
  count = 0;
  List ynk = []; //yes=1,no=0
  List s0 = [];
  List a = [];
  List a1 = [];
  await for (String line in cLines) {
    // print(line);
    count++;
    a = line.split("").map((x) => (x)).toList();
    // print("a:${a[1]}");
    a1.add(a);
    // print(count);
    // print(hwk[0]);
    if (count == hwk[0]) break;
  }
  List initList = [0, 1];
  List allInit = makeList0(initList);
  List test2 = makeList(makeList(allInit)); // 自作二進法製造機！

  print(allInit);
  print(test2);
}
