// マス目
import 'dart:io';

void main() {
  List hw = stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int h = hw[0];
  int w = hw[1];
  List sList;
  int count;
  List ans;
  var an;
  ans = [];
  sList = [];
  for (int i = 0; i < h; i++) {
    sList.add(stdin.readLineSync());
  }

  for (int i = 0; i < h; i++) {
    an = (sList[i].split(''));
    for (int j = 0; j < w; j++) {
      count = 0;

      if (sList[i][j] == "#") continue;
      if ((i - 1 >= 0 && j - 1 >= 0)) {
        if (sList[i - 1][j - 1] == "#") count++;
      }

      if (i - 1 >= 0) {
        if (sList[i - 1][j] == "#") count++;
      }
      if (i - 1 >= 0 && j + 1 < w) {
        if (sList[i - 1][j + 1] == "#") count++;
      }

      if (j - 1 >= 0) {
        if (sList[i][j - 1] == "#") count++;
      }
      if (j + 1 < w) {
        if (sList[i][j + 1] == "#") count++;
      }
      if (i + 1 < h && j - 1 >= 0) {
        if (sList[i + 1][j - 1] == "#") count++;
      }
      if (i + 1 < h) {
        if (sList[i + 1][j] == "#") count++;
      }
      if (i + 1 < h && j + 1 < w) {
        if (sList[i + 1][j + 1] == "#") count++;
      }

      an[j] = count.toString();
    }
    ans.add(an);
  }
  for (int i = 0; i < h; i++) {
    print(ans[i].join());
  }
}
//i,jの場合分けと、文字列を置換するのにてこづった（文字列はListにしちゃうのがよさそう）
