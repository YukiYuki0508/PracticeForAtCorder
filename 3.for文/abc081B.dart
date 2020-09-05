// 何回操作を行うことができるか
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()); // 一つ入力
  List ai = stdin
      .readLineSync()
      .split(" ")
      .map((x) => int.parse(x))
      .toList(); // 一行に複数入力

  int count;

  count = 0;

  bool even;
  even = true;
  while (even) {
    for (int i = 0; i < n; i++) {
      if (ai[i] % 2 != 0) {
        even = false;
        print(count);
        return;
      }

      ai[i] = (ai[i] / 2).floor();
    }
    // if (even == false) break;
    // if (even) {
    // for (int i = 0; i < n; i++) {
    //   ai[i] = (ai[i] / 2).floor();
    // }
    count++;
    // }
  }

  print(count);
}
