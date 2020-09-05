import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());
  List list = [];
  for (int i = 1; i <= n; i++) {
    int l = i;
    int count = 0;
    list.add({"i": i, "count": count});
    // if ((l / 2).floor() == 0) continue; //次のiにいく
    while (true) {
      if (l % 2 != 0) {
        list[i - 1] = {"i": i, "count": count};
        break;
      }
      if (l % 2 == 0) {
        count++;
        l = (l / 2).floor();
      }
      if (l < 2) {
        list[i - 1] = {"i": i, "count": count};
        break;
      }
    }
  }
  // print(list);
  List test = list..sort((b, a) => a["count"].compareTo(b["count"]));
  print(test[0]["i"]);
}
