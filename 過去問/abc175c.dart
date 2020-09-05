import 'dart:io';

void main() {
  int k = int.parse(stdin.readLineSync());
  int i;
  i = 1;
  int sum;
  sum = 7;
  int x = 7 % k;
  var s = <int>{};
  if (k % 2 == 0 || k % 5 == 0) {
    print("-1");
    return;
  }
  while (!s.contains(0)) {
    if (x == 0) {
      print(i);
      return;
    }

    s.add(x);
    sum = x * 10 + 7; // 一桁目は割ったもので良い
    if (sum % k == 0) {
      print(i + 1);
      return;
    }
    x = sum % k;
    // print("sum$sum,$i,${s.contains(x)}");
    // print(x);
    i++;
  }

  print('-111');
}
