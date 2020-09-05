// 方法は何通りあるでしょうか
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync());
  int b = int.parse(stdin.readLineSync());
  int c = int.parse(stdin.readLineSync());
  int x = int.parse(stdin.readLineSync());
  int count;
  count = 0;
  for (int i = 0; i <= a; i++) {
    // 0もわすれずに
    for (int k = 0; k <= b; k++) {
      for (int l = 0; l <= c; l++) {
        int total = 500 * i + 100 * k + 50 * l;
        if (total == x) {
          count = count + 1;
        }
      }
    }
  }
  print(count);
}
