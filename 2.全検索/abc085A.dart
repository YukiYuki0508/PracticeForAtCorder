import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  String a;
  if (s.startsWith("2017")) {
    a = s.replaceFirst('2017', "2018");
  }
  print(a);
}
