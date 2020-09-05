import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  int a = int.parse(stdin.readLineSync());

  int ans = n % 500;
  if (ans <= a) {
    print("Yes");
  } else
    print("No");
}
