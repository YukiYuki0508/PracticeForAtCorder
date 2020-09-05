import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync());
  List a1 = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List a2 = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int sum;
  sum = 0;
  List sumLists;
  sumLists = [];

  for (int i = 0; i < n; i++) {
    int sum1;
    sum1 = 0;
    int sum2;
    sum2 = 0;
    for (int j = 0; j <= i; j++) {
      sum1 = sum1 + a1[j];
    }
    for (int j = i; j < n; j++) {
      sum2 = sum2 + a2[j];
    }
    sum = sum1 + sum2;

    sumLists.add(sum);
  }
  List sortAi = sumLists..sort((b, a) => a.compareTo(b)); // 大きい順にsort
  print(sortAi[0]);
}
