import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync());
  int n = int.parse(stdin.readLineSync());
  double x = (n - a) / 500;
  if (x is int) {
    print("Yes");
  } else {
    print("No");
  }
}
