import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  int count;
  count = 0;
  for (int i = 0; i < 3; i++) {
    if (s[i] == "1") {
      count++;
    }
  }
  print(count);
}
