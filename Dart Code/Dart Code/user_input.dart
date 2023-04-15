import 'dart:io';

void main(){
  int? n = int.parse(stdin.readLineSync() ?? '0');
  print(n);

  String? name = stdin.readLineSync();
  print(name);
}