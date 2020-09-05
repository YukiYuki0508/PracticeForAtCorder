import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync());
  if (x >= 30) {
    print("Yes");
  } else {
    print("No");
  }
}
