import 'builders/car_builder.dart';
import 'builders/car_manual_builder.dart';
import 'cars/car.dart';
import 'cars/manual.dart';
import 'director/director.dart';

void main() {
  Director director = Director();
  
  CarBuilder builder = CarBuilder();
  director.constructSportsCar(builder);

  Car car = builder.getResult;
  print("Car built:\n" + car.getCarType.toString());

  CarManualBuilder manualBuilder = CarManualBuilder();

  director.constructSportsCar(manualBuilder);
  Manual carManual = manualBuilder.getResult;
  print("\nCar manual built:\n" + carManual.print());
}