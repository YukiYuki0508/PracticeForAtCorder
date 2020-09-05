import 'dart:io';

void main() {
  String date = stdin.readLineSync();
  String ans = date.replaceAll('2017', '2018');
  print(ans);
}
