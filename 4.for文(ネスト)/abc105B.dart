import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  bool yes = false;
  for (int a = 0; a < n; a++) {
    for (int b = 0; b < n; b++) {
      int sum = 4 * a + 7 * b;
      if (sum == n) {
        print("Yes");
        yes = true;
        return;
      }
    }
  }
  if (yes == false) print("No");
}
