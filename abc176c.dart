import 'dart:io';
import 'dart:math';

double log10(num x) => log(x) / ln10;
void main() {
  int n = int.parse(stdin.readLineSync());
  List aList =
      stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  int sum = 0;
  int s = 0;

  for (int i = 1; i < n; i++) {
    int diffLength = log10(aList[s]).ceil() - log10(aList[i]).ceil();
    // print("diffLength$diffLength");

    if (diffLength < 0) {
      s = i;
    } else {
      int diff0 = (aList[s] / pow(10, diffLength)).floor();
      // print("diff0$diff0");
      int diff1 = (aList[s] % pow(10, diffLength)) - (aList[i]);
      int diff = diff0 * pow(10, diffLength) + diff1;
      // int diff = (aList[s] - (aList[i]));
      if (diff > 0) {
        sum = sum + diff;
      } else if (diff < 0) {
        s = i;
      }
    }
  }
  print(sum);
}
