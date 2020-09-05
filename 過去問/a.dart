import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  int count;
  count = 0;
  int sum;
  sum = 1;
  if (s[0] == 'R') {
    count = 1;
    sum = 1;
  } else if (s[0] == 'S') {
    count = 0;
    sum = 0;
  }
  for (int i = 1; i < 3; i++) {
    if (count == 0 && s[i] == "R") sum = 1;
    if (s[i - 1] == "R" && s[i] == "R") {
      sum++;
    }
  }
  print(sum);
}
