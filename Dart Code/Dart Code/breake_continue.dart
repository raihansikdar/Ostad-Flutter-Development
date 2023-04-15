void main() {
  print("continue --------");
  for (int i = 1; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
  print("break --------");
  for (int j = 0; j < 10; j++) {
    if (j == 5) {
      break;
    }
    print(j);
  }
}
