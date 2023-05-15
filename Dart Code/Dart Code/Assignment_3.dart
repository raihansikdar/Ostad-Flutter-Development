class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car({required this.brand, required this.model, required this.year, required this.milesDriven}){
     numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() => milesDriven;

  String getBrand() => brand;

  String getModel() => model;

  int getYear() => year;

  int getAge() => DateTime.now().year - year;

}


void main() {
  Car car1 = Car(brand: 'Toyota', model: 'Corolla', year: 2022, milesDriven: 50);
  car1.drive(100);
  print('Brand: ${car1.brand}, Model: ${car1.model}, Year: ${car1.year}, Miles Driven: ${car1.milesDriven}, Age: ${car1.getAge()}');

  Car car2 = Car(brand: 'Honda', model: 'Civic', year: 2021, milesDriven: 0);
  car2.drive(200);
  print('Brand: ${car2.brand}, Model: ${car2.model}, Year: ${car2.year}, Miles Driven: ${car2.milesDriven}, Age: ${car2.getAge()}');

  Car car3 = Car(brand: 'Nissan', model: 'Altima', year: 2020, milesDriven: 150);
  car3.drive(300);
  print('Brand: ${car3.brand}, Model: ${car3.model}, Year: ${car3.year}, Miles Driven: ${car3.milesDriven}, Age: ${car3.getAge()}');

  print('Total number of cars created: ${Car.numberOfCars}');
}
