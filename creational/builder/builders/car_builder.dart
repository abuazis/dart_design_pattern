import '../cars/car.dart';
import '../cars/car_type.dart';
import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';
import 'builder.dart';

class CarBuilder implements Builder {
  late CarType _type;
  late int _seats;
  late Engine _engine;
  late Transmission _transmission;
  late TripComputer? _tripComputer;
  late GPSNavigator? _gpsNavigator;

  @override
  void setCarType(CarType type) {
    _type = type;
  }

  @override
  void setEngine(Engine engine) {
    _engine = engine;
  }

  @override
  void setGPSNavigator(GPSNavigator gpsNavigator) {
    _gpsNavigator = gpsNavigator;
  }

  @override
  void setSeats(int seats) {
    _seats = seats;
  }

  @override
  void setTransmission(Transmission transmission) {
    _transmission = transmission;
  }

  @override
  void setTripComputer(TripComputer tripComputer) {
    _tripComputer = tripComputer;
  }

  Car get getResult => Car(_type, _seats, _engine, _transmission, _tripComputer, _gpsNavigator);
}