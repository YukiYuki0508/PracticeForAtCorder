import "dart:io";

// void main(List<String> args) {
//   List ab = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
//   int product = ab[0] * ab[1];
//   if (product % 2 == 0) {
//     print("Even");
//   } else {
//     print("Odd");
//   }
// }
int preA;
int ans1;
inputA() {
  print("a=");
  preA = int.parse(stdin.readLineSync());
  if (preA >= 1 && preA <= 10000) {
    ans1 = preA;
  } else {
    print("正しい範囲で入力してください");
    inputA();
  }
  return ans1;
}

int preB;
int ans2;
inputB() {
  print("b=");
  preB = int.parse(stdin.readLineSync());
  if (preB >= 1 && preB <= 10000) {
    ans2 = preB;
  } else {
    print("正しい範囲で入力してください");
    inputB();
  }
  return ans2;
}

void main() {
  int a;
  int b;

  a = inputA();
  b = inputB();

  int c = (a * b) % 2;
  if (c == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}
