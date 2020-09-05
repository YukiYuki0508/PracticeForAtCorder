import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  int x;
  x = 0;
  for (int i = 0; i < 3; i++) {
    if (s[i] == "o") x++;
  }
  int ans = 700 + 100 * x;
  print(ans);
}
