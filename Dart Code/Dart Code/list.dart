void main(){
  List<int> myList = [];
  myList.add(10);
  myList.add(20);
  myList.add(30);
  myList.add(40);
  print(myList[2]);
  print(myList);
  print(myList.reversed);

  List<int> myList2 = [];
  myList2 = List.of(myList);
  print('myList2 => ${myList2}');

  print(myList.isEmpty);
  print(myList.isNotEmpty);
 
}