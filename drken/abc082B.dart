import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  String t = stdin.readLineSync();

  List ss = s.split("");
  print(ss);
  List sortS = ss..sort();
  print(sortS);
  List tt = t.split("");
  print(tt);
  List sortT = tt..sort();
  print(sortT);
  List st = [sortS.toString(), sortT.toString()];
  print(st);
  print("てすと");
  List sortST = st..sort();
  print("てすと");
  print(sortST);
  if (st[0] == sortST[0]) {
    print("Yes");
  }
}
