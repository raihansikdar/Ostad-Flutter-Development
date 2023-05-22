class Person{
  String name;
  int age;
  String address;
  Person({ required this.name, required this.age, required this.address});

  void sayHello(){
    print("Hello,my name is $name");
  }
   int getAgeInMonths(){
    return age*12;
   }
}

void main(){
  Person personObj = Person(name: "Raihan Sikdar", age: 23, address: "Mirpur 2,Dhaka");
  personObj.sayHello();
  print("Age in Month : ${personObj.getAgeInMonths()} Months");
}