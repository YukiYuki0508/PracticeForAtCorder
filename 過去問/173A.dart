import 'dart:io';

void main() async {
  int n = int.parse(stdin.readLineSync());
  int ans;
  ans = ((n % 1000) == 0) ? 0 : 1000 - (n % 1000);

  print(ans);
}
