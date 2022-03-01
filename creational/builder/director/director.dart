import '../builders/builder.dart';
import '../cars/car_type.dart';
import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';

class Director {
  void constructSportsCar(Builder builder) {
    builder.setCarType(CarType.SPORTS_CAR);
    builder.setSeats(2);
    builder.setEngine(Engine(3.0, 0));
    builder.setTransmission(Transmission.SEMI_AUTOMATIC);
    builder.setTripComputer(TripComputer());
    builder.setGPSNavigator(GPSNavigator());
  }

  void constructCityCar(Builder builder) {
    builder.setCarType(CarType.CITY_CAR);
    builder.setSeats(2);
    builder.setEngine(Engine(1.2, 0));
    builder.setTransmission(Transmission.AUTOMATIC);
    builder.setTripComputer(TripComputer());
    builder.setGPSNavigator(GPSNavigator());
  }

  void constructSUV(Builder builder) {
    builder.setCarType(CarType.SUV);
    builder.setSeats(4);
    builder.setEngine(Engine(2.5, 0));
    builder.setTransmission(Transmission.MANUAL);
    builder.setGPSNavigator(GPSNavigator());
  }
}