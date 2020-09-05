// 文字列
import 'dart:io';

void main() {
  String s = stdin.readLineSync();
  String newS;
  bool isMatch;
  isMatch = false;
  while (true) {
    if (s.endsWith("dream")) {
      // 最後に特定のstringがあるか
      newS = s.substring(0, s.length - 5); // 文字列の一部を抜き出す
      isMatch = true;
    } else if (s.endsWith("dreamer")) {
      newS = s.substring(0, s.length - 7);
      isMatch = true;
    } else if (s.endsWith("erase")) {
      newS = s.substring(0, s.length - 5);
      isMatch = true;
    } else if (s.endsWith("eraser")) {
      newS = s.substring(0, s.length - 6);
      isMatch = true;
    } else if (s.length == 0) {
      isMatch = true;
      break;
    } else {
      isMatch = false;

      break;
    }
    s = newS;
  }
  if (isMatch == true) {
    print("YES");
  } else {
    print("NO");
  }
}
