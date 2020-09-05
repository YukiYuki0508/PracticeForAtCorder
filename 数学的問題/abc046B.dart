// 組み合わせ問題
import 'dart:io';
import 'dart:math';

void main() {
  List nk = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int ans;
  ans = nk[1] * pow(nk[1] - 1, nk[0] - 1);
  print(ans);
}
