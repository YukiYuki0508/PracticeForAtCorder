import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  String s = stdin.readLineSync();
  List sList = s.split("").map((x) => (x)).toList(); // 文字列をListに変換
  // List sAfter = [];
  List sumList = [];
  int sumE = 0;
  int sumW = 0;
  for (int i = 0; i < n; i++) {
    // sAfter = [];
    int sum = 0;
    for (int j = 0; j < n; j++) {
      if (j < i) {
        // sAfter.add("E");
        if (sList[j] != "E") sum++;
      }
      // else if (j == i) {
      //   sAfter.add(sList[i]);
      // }
      else if (j > i) {
        if (sList[j] != "W") sum++;
      }
    }
    // print("Safter$sAfter");
    // int sum = 0;
    // for (int j = 0; j < n; j++) {
    //   if (sList[j] != sAfter[j]) sum++;
    // }
    sumList.add(sum);
  }
  List sortSum = sumList..sort((a, b) => a.compareTo(b));
  print(sortSum[0]);
}

//時間切れ
