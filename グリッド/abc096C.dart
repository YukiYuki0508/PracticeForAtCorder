import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  List hw = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  Stream<String> sLines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）
  int lineNum;
  lineNum = 1;
  List si = [];
  List s = [];
  await for (var line in sLines) {
    si = line.split("").map((x) => (x)).toList(); // 文字列をListに変換
    lineNum = lineNum + 1;
    s.add(si);

    if (lineNum > hw[0]) break; // ここの場所！
  }
  List afterS = s;

  for (int i = 0; i < hw[0] - 1; i++) {
    for (int j = 0; j < hw[1] - 1; j++) {
      if (afterS[i][j] == "#" || afterS[i][j] == "B") {
        if (afterS[i + 1][j] == "#" || afterS[i + 1][j] == "B") {
          afterS[i][j] = "B";
          afterS[i + 1][j] = "B";
        }
        if (afterS[i][j + 1] == "#" || afterS[i][j + 1] == "B") {
          afterS[i][j] = "B";
          afterS[i][j + 1] = "B";
        }
      }
    }
  }

  int i = hw[0] - 1;

  for (int j = 0; j < hw[1] - 1; j++) {
    if (afterS[i][j] == "#" || afterS[i][j] == "B") {
      if (afterS[i][j + 1] == "#" || afterS[i][j + 1] == "B") {
        afterS[i][j] = "B";
        afterS[i][j + 1] = "B";
      }
    }
  }
  int j = hw[1] - 1;

  for (int i = 0; i < hw[0] - 1; i++) {
    if (afterS[i][j] == "#" || afterS[i][j] == "B") {
      if (afterS[i + 1][j] == "#" || afterS[i + 1][j] == "B") {
        afterS[i][j] = "B";
        afterS[i + 1][j] = "B";
      }
    }
  }
  // print(afterS);

  for (int i = 0; i < hw[0]; i++) {
    for (int j = 0; j < hw[1]; j++) {
      if (afterS[i][j] == "#") {
        print("No");
        return;
      }
    }
  }

  print("Yes");
}
