import 'dart:io';

void main() {
  String input = stdin.readLineSync();
  int x = int.parse(input);
  int f = 0;
  int xLength = input.length;
  for (int i = 0; i < xLength; i++) {
    f = f + int.parse(input[i]);
  }
  if (x % f == 0) {
    print("Yes");
  } else {
    print("No");
  }
}
