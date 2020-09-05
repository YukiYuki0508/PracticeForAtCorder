// 偶数か奇数か
import 'dart:io';

void main() {
  List ab = stdin
      .readLineSync()
      .split(" ")
      .map((x) => int.parse(x))
      .toList(); // 一行に複数入力
  int c = ab[0] * ab[1];
  if (c % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}
