import "dart:io";

void main() {
  String s = stdin.readLineSync();
  String mihon = "abcdefghijklmnopqrstuvwxyz";

  List sList = [];
  List mihonList = [];
  for (int i = 0; i < s.length; i++) {
    sList.add(s[i]);
  }
  for (int i = 0; i < mihon.length; i++) {
    mihonList.add(mihon[i]);
  }
  List sortS = sList..sort((a, b) => a.compareTo(b));

  List reducedS = sortS.toSet().toList();

  for (int i = 0; i < reducedS.length; i++) {
    if (reducedS[i] != mihonList[i]) {
      print(mihonList[i]);
      return;
    }
    if (i == reducedS.length - 1 && reducedS.length < mihon.length) {
      print(mihonList[reducedS.length]);
      return;
    }
  }

  print("None");
}
// てこづった
