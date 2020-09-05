import 'dart:io';
import "dart:math";

void main() {
  List input =
      stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int a = input[0];
  int b = input[1];
  int c = input[2];
  int x = input[3];
  int y = input[4];
  List sumList = [];
  int kkMax = (x < y) ? x : y;
  // print(kkMax);
  for (int kk = 0; kk <= 100000; kk++) {
    int sum;
    sum = max(0, x - kk) * a + max(0, y - kk) * b + (kk * c * 2);

    sumList.add(sum);
  }
  // print(sumList);
  List sortedS = sumList..sort((a, b) => a.compareTo(b));
  print(sortedS[0]);
}
