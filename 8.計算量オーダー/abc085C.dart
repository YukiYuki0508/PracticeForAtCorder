// 連立方程式
import 'dart:io';

void main() {
  bool yes;
  yes = false;
  List ny = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  for (int a = 0; a <= ny[0]; a++) {
    for (int b = 0; b <= (ny[0] - a); b++) {
      if (10000 * a + 5000 * b + 1000 * (ny[0] - b - a) == ny[1]) {
        // cを予め変換してfor文を一個減らす
        print("$a $b ${ny[0] - b - a}");
        yes = true;
        break;
      }
    }
    if (yes == true) break;
  }
  if (yes == false) print("-1 -1 -1");
}
