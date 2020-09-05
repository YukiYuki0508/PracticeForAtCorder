import 'dart:io';

void main() {
  List nxt = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int i = (nxt[0] / nxt[1]).floor();
  int minute;
  if (nxt[0] % nxt[1] == 0)
    minute = (i) * nxt[2];
  else
    minute = (i + 1) * nxt[2];
  print(minute);
}
