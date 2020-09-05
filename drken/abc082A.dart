import 'dart:io';
import "dart:math";

void main() {
  int a = int.parse(stdin.readLineSync());
  int b = int.parse(stdin.readLineSync());
  int x = ((a + b) / 2).ceil();
  print(x);
}
