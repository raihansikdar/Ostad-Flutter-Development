void main() {
  List<int> myList = [1, 2, 3, 2, 5, 3, 4, 6, 9, 2, 3, 4];
  List<int> uniqueList = [];
  for (int value in myList) {
    if (!uniqueList.contains(value)) {
      uniqueList.add(value);
    }
  }
  print(uniqueList);
}