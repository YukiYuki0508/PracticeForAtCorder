import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List aList =
      stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int oddNum = 0;
  for (int i = 0; i < n; i++) {
    if (aList[i] % 2 == 1) oddNum++;
  }

  if (oddNum % 2 == 0) {
    print("YES");
  } else {
    print("NO");
  }
}
