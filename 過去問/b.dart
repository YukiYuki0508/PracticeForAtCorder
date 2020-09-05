import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List lList =
      stdin.readLineSync().split(" ").map((x) => int.parse(x)).toList();
  List lList1 = lList..sort((a, b) => a.compareTo(b));

  int count;
  count = 0;

  for (int a = 0; a < n; a++) {
    for (int b = a + 1; b < n; b++) {
      for (int c = b + 1; c < n; c++) {
        if (lList1[a] != lList1[b] && lList1[b] != lList1[c]) {
          if (lList1[a] + lList1[b] > lList1[c]) {
            count++;
          }
        }
      }
    }
  }
  int ans = count;
  print(ans);
}
