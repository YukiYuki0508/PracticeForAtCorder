import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List ai = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List sortA = ai..sort((b, a) => a.compareTo(b)); // 大きい順
  int diff = sortA[0] - sortA[n - 1];
  print(diff);
}
