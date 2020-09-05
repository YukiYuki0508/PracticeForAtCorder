import 'dart:io';

void main() {
  String n = stdin.readLineSync();
  int nLength = n.length;
  // print(nLength);
  int sum = 0;
  for (int i = 0; i < nLength; i++) {
    sum = sum + int.parse(n[i]);
  }
  // print(sum);
  if (sum % 9 == 0)
    print("Yes");
  else
    print("No");
}
