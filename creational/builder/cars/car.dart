import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';
import 'car_type.dart';

class Car {
  final CarType _carType;
  final int _seats;
  final Engine _engine;
  final Transmission _transmission;
  final TripComputer? _tripComputer;
  final GPSNavigator? _gpsNavigator;
  double _fuel = 0;

  Car(
    this._carType,
    this._seats,
    this._engine,
    this._transmission,
    this._tripComputer,
    this._gpsNavigator,
  ) {
    if (_tripComputer != null) {
      _tripComputer!.setCar(this);
    }
  }

  double get getFuel => _fuel;
  int get getSeats => _seats;
  CarType get getCarType => _carType;
  Engine get getEngine => _engine;
  Transmission get getTransmission => _transmission;
  TripComputer? get getTripComputer => _tripComputer;
  GPSNavigator? get getGpsNavigator => _gpsNavigator;

  void set setFuel(double fuel) {
    _fuel = fuel;
  }
}