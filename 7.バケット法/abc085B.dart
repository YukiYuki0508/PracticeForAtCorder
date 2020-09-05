// バケツ法
import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List di = [];

  for (int i = 0; i < n; i++) {
    di.add(int.parse(stdin.readLineSync()));
  }
  // print(di.toSet()); このイテレータブルの要素を含むセットを作成します。
  // print(di.toList()); // リストにします
  var reducedDi = di.toSet().toList(); //大事
  print(reducedDi.length);
}
