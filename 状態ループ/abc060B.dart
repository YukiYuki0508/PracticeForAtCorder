import 'dart:io';

void main() {
  List abc = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();

  bool yes = false;
  int n = 0;
  for (int i = 1; i <= 10000; i++) {
    n = n + abc[0];
    if (n % abc[1] == abc[2]) {
      yes = true;

      break;
    }
  }
  (yes == true) ? print("YES") : print("NO");
}
// むつかしい。解けなかった
