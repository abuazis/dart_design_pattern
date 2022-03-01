import '../cars/car.dart';

class TripComputer {
  late Car _car;

  void setCar(Car car) {
    _car = car;
  }

  void showFuelLevel() => print("Fuel level: " + _car.getFuel.toString());

  void showStatus() 
  {
    if (_car.getEngine.isStarted) {
      print("Car is started");
    } else {
      print("Car isn't started");
    }
  }
}