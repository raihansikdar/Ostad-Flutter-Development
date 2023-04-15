void main() {
  int n = 100;
  for (int i = 0; i < 100; i++) {
    int flag = 0;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        flag++;
      }
    }
    if(flag==0){
      print(i);
    }
  }
}
