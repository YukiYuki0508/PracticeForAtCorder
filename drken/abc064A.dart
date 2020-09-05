import 'dart:io';

void main() {
  int r, g, b;
  r = int.parse(stdin.readLineSync());
  g = int.parse(stdin.readLineSync());
  b = int.parse(stdin.readLineSync());

  int ans = r * 100 + g * 10 + b;
  if (ans % 4 == 0) {
    print("OK");
  } else {
    print("NG");
  }
}
