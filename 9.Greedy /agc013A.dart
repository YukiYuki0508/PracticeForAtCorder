import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List a = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();

  int count = 1;
  bool flg = true;
  int trend;

  for (int i = 0; i < n - 1; i++) {
    int diff = a[i] - a[i + 1];
    int curr;

    if (diff == 0) continue;
    if (diff > 0) curr = 0;
    if (diff < 0) curr = 1;
    if (flg) {
      trend = curr;
      flg = false;
      continue;
    }

    if (curr == trend) {
      continue;
    } else {
      flg = true;
      trend = curr;
      count += 1;
    }
  }

  print("$count");
}
