String studentGrade(String studentName,int testScore){
  if(testScore <0 || testScore > 100){
    return "Invalid Grade";
  }else{
    if(testScore >=90 && testScore <=100){
      return "A";
    } else  if(testScore >=80 && testScore <=89){
      return "B";
    } else  if(testScore >=70 && testScore <=79){
      return "C";
    } else  if(testScore >=60 && testScore <=69){
      return "D";
    }else{
      return "F";
    }

  }
}

void main(){
  String studentName = 'Raihan Sikdar';
  int testScore = -10;
  String grade = studentGrade(studentName,testScore);
  print(grade);
}