import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  int n = int.parse(stdin.readLineSync());
  Stream<String> sLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  int count = 0;
  int c0 = 0;
  int c1 = 0;
  int c2 = 0;
  int c3 = 0;

  await for (var line in sLines) {
    // print("22$line");
    count++;
    // print("count$count");
    // print(line);

    if (line.startsWith("AC")) {
      c0++;
      // print("o0");
    } else if (line.startsWith("WA")) {
      c1++;
      // print("o1");
    } else if (line.startsWith("TLE")) {
      c2++;
      // print("o2");
    } else if (line.startsWith("RE")) {
      c3++;
      // print("o3");
    }
    if (c0 + c1 + c2 + c3 == n) break;
    if (count >= n) break;
  }
  print("AC x $c0");
  print("WA x $c1");
  print("TLE x $c2");
  print("RE x $c3");
}
