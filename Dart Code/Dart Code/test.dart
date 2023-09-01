import 'dart:io';

List<int> primeNumberFinder(int number) {
  int flag, sum = 0, count = 0;

  for (int i = 2; i < number; i++) {
    flag = 0;

    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        flag = 1;
      }
    }

    if (flag == 0) {
      print(i);
      count++;
      sum += i;
    }
  }

  return [sum, count];
}

void main() {
  print("Enter the value of n:");
  int number = int.parse(stdin.readLineSync() ?? "0");

  List<int> results = primeNumberFinder(number);
  
  // results.forEach((result) {
  //   print(result);
  // });

  results.forEach((v) => {print(v)});
}