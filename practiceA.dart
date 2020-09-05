import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync());
  List bc = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();

  String s = stdin.readLineSync();

  int ans = a + bc[0] + bc[1];
  print("$ans $s");
}
