// パリティ問題
// 大量入力問題
import 'dart:convert';
import 'dart:io';
import 'dart:async';

Future main() async {
  var n = int.parse(stdin.readLineSync());
  // readLineSync()を複数行の入力に対して使用すると非常に遅いため、非同期に入力を受ける
  var lines =
      stdin.transform(utf8.decoder).transform(LineSplitter()); // ここ大事（複数行入力）

  List<int> txy = [];
  bool possible = true;
  List<int> prev = [0, 0, 0];
  int diff = 0;
  int dis = 0;
  int count = 0;
  // 非同期に入力しているので。
  await for (var line in lines) {
    txy = line.split(" ").map((x) => int.parse(x)).toList();
    diff = (txy[0] - prev[0]);
    dis = ((txy[1] - prev[1]).abs() + (txy[2] - prev[2]).abs());
    if (diff < dis || diff % 2 != dis % 2) {
      possible = false;
      break;
    }
    prev = [txy[0], txy[1], txy[2]];
    count++;
    possible = true;
    if (count >= n) break;
  }

  if (possible == true) {
    print("Yes");
  } else {
    print("No");
  }
}
//ひとの見てやっとできた
// await必要
// 入力時間かかるので上記の方法必須
