import 'dart:io';

void main() {
  List abx = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  double lMax = 0;
  double lMin = 0;
  for (int i = 0; i < abx[1]; i++) {
    if ((abx[1] - i) % abx[2] == 0) {
      lMax = ((abx[1] - i) / abx[2]);
      // print(lMax);
      // print("abx[1] - i${abx[1] - i}");
      break;
    }
  }
  for (int i = 0; i < abx[1]; i++) {
    if ((abx[0] + i) % abx[2] == 0) {
      lMin = ((abx[0] + i) / abx[2]);
      // print("abx[0] + i${abx[0] + i}");
      // print(lMin);
      break;
    }
  }

  if (lMax == 0 && lMin == 0) {
    print(0);
    return;
  }
  int sum = (lMax - lMin + 1).floor();
  print(sum);
}
