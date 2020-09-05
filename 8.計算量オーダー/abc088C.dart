import "dart:io";

void main() {
  List c1i = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List c2i = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List c3i = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  if (c1i[0] - c2i[0] == c1i[1] - c2i[1] &&
      c1i[1] - c2i[1] == c1i[2] - c2i[2] &&
      c1i[0] - c3i[0] == c1i[1] - c3i[1] &&
      c1i[1] - c3i[1] == c1i[2] - c3i[2] &&
      c2i[0] - c3i[0] == c2i[1] - c3i[1] &&
      c2i[1] - c3i[1] == c2i[2] - c3i[2]) {
    print("Yes");
  } else {
    print("No");
  }
}
