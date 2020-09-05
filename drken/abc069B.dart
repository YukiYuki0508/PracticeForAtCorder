import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  String sf = s[0];
  String sl = s[s.length - 1];
  int len = s.length - 2;
  String ans = sf + len.toString() + sl;
  print(ans);
}
