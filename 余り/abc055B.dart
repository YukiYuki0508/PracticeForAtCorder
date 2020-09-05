import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  int sum;
  sum = 1;
  for (int i = 1; i <= n; i++) {
    sum = sum * i;
    if (sum > 10000) {
      sum = sum % (1000000000 + 7); //途中で割ってsumが大きくなりすぎるのを防ぐ
    }
  }
  print(sum % (1000000000 + 7));
}
