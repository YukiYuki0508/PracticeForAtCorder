import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  int yen = 700;
  int count;
  count = 0;
  for (int i = 0; i < 3; i++) {
    if (s[i] == "o") count++;
  }
  print(count * 100 + yen);
}
