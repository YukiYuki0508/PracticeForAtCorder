import 'dart:io';

void main() {
  List rgb = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int sum = rgb[0] * 100 + rgb[1] * 10 + rgb[2];
  if (sum % 4 == 0) {
    print("YES");
  } else {
    print("NO");
  }
}
