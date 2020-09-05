import "dart:io";

void main() {
  List ab = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int count = 0;
  for (int s = ab[0]; s <= ab[1]; s++) {
    int sLength = s.toString().length;
    if (sLength % 2 == 1) {
      int middle = (sLength / 2).floor() + 1;
      String first = s.toString().substring(0, middle);
      String last = s
          .toString()
          .substring(middle - 1, sLength)
          .split('')
          .reversed
          .join(); // 文字列を逆にする
      if (first == last) {
        count++;
      }
    } else {
      int middle = (sLength / 2).floor();
      String first = s.toString().substring(0, middle);
      String last =
          s.toString().substring(middle, sLength).split('').reversed.join();
      if (first == last) {
        count++;
      }
    }
  }
  print(count);
}
