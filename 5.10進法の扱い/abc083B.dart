// 総和を求めてください
import 'dart:io';

void main() {
  List nab = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int count; // 総和
  count = 0;
  int sum; // 各桁の総和
  for (int i = 1; i <= nab[0]; i++) {
    int number = i;
    sum = 0;
    while (true) {
      int amari = (number % 10);
      sum = sum + amari;
      int nokori = (number / 10).floor();

      number = nokori;

      if (nokori == 0) {
        break;
      }
    }
    if (nab[1] <= sum && sum <= nab[2]) {
      count = count + i;
    }
  }

  print(count);
}

//むつかしかったできなかった
