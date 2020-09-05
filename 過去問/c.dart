import 'dart:io';

void main() {
  List xkd = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int x = (xkd[0] < 0) ? -1 * xkd[0] : xkd[0];
  int k = xkd[1];
  int d = xkd[2];

  int ans;
  int b;
  int a;
  ans = 0;
  if (x == 0) {
    if (k % 2 == 0) {
      ans = 0;
    } else {
      ans = d;
    }
  } else if (x >= (k * d)) {
    ans = x - (k * d);
  } else {
    b = (x % d);
    a = (x / d).floor();

    if ((k - a) % 2 == 0) {
      ans = b;
    } else {
      ans = d - b;
    }
  }

  print(ans);
}
