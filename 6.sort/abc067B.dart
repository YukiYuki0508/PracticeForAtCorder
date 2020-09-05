import 'dart:io';

void main() {
  List nk = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List l = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List lList = [];
  for (int i = 0; i < nk[0]; i++) {
    lList.add(l[i]);
  }

  int sum = 0;
  List lSort = lList..sort((b, a) => a.compareTo(b)); // 大きい順にsort
  for (int i = 0; i < nk[1]; i++) {
    sum = sum + lSort[i];
  }
  print(sum);
}
