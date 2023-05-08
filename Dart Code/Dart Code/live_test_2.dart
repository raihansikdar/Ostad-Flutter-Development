List<int> getOddNumbers(List<int> numberList){
  List<int> newList =[];
  for(int i=0;i<numberList.length;i++){
    if(numberList[i] %2 !=0){
      newList.add(numberList[i]);
    }
  }
  return newList;
}


void main(){
  List<int> numberList = [2, 5, 8, 11, 13, 18, 21,24];
  print(numberList);
  print(getOddNumbers(numberList));
}