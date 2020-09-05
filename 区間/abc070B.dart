import 'dart:io';

void main() {
  List abcd = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int ans;

  int preAns;
  if ((abcd[2] > abcd[1]) || (abcd[0] > abcd[3])) {
    ans = 0;
  } else {
    int ac = (abcd[0] > abcd[2]) ? abcd[2] : abcd[0];
    int bd = (abcd[3] > abcd[1]) ? abcd[3] : abcd[1];
    preAns = (bd - ac) - (abcd[0] - abcd[2]).abs() - (abcd[1] - abcd[3]).abs();
    ans = (preAns <= 0) ? 0 : preAns;
  }
  print(ans);
}
