import 'dart:io';

void main() {
  String abcd = stdin.readLineSync();
  int i = int.parse(abcd[0]);
  int j = int.parse(abcd[1]);
  int k = int.parse(abcd[2]);
  int l = int.parse(abcd[3]);

  if (i + j + k + l == 7) {
    print("$i+$j+$k+$l=7");
  } else if (i - j + k + l == 7) {
    print("$i-$j+$k+$l=7");
  } else if (i + j - k + l == 7) {
    print("$i+$j-$k+$l=7");
  } else if (i + j + k - l == 7) {
    print("$i+$j+$k-$l=7");
  } else if (i - j - k + l == 7) {
    print("$i-$j-$k+$l=7");
  } else if (i - j + k - l == 7) {
    print("$i-$j+$k-$l=7");
  } else if (i + j - k - l == 7) {
    print("$i+$j-$k-$l=7");
  } else if (i - j - k - l == 7) {
    print("$i-$j-$k-$l=7");
  }
}
