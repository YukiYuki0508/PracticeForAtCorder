// sort
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List ai = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List sortAi = ai..sort((b, a) => a.compareTo(b)); // 大きい順にsort
  int alice;
  int bob;
  alice = 0;
  bob = 0;
  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      alice = alice + sortAi[i];
    } else {
      bob = bob + sortAi[i];
    }
  }
  int ans = alice - bob;
  print(ans);
}
