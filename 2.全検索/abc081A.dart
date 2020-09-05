// 何個含まれるか
import 'dart:io';

void main() {
  String abc = stdin.readLineSync(); // 文字列入力
  int count;
  count = 0;
  for (int i = 0; i < 3; i++) {
    if (abc[i] == "1") count++;
  }
  print(count);
}
