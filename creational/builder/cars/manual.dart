import '../components/engine.dart';
import '../components/gps_navigator.dart';
import '../components/transmission.dart';
import '../components/trip_computer.dart';
import 'car_type.dart';

class Manual {
  final CarType _carType;
  final int _seats;
  final Engine _engine;
  final Transmission _transmission;
  final TripComputer? _tripComputer;
  final GPSNavigator? _gpsNavigator;

  Manual(
    this._carType,
    this._seats,
    this._engine,
    this._transmission,
    this._tripComputer,
    this._gpsNavigator,
  );

  String print() {
    String info = "";

    info += "Type of car: " + _carType.toString() + "\n";
    info += "Count of seats: " + _seats.toString() + "\n";
    info += "Engine: volume - " + _engine.getVolume.toString() 
    + "; mileage - " + _engine.getMileage.toString() + "\n";
    info += "Transmission: " + _transmission.toString() + "\n";

    if (_tripComputer != null) {
        info += "Trip Computer: Functional" + "\n";
    } else {
        info += "Trip Computer: N/A" + "\n";
    }

    if (_gpsNavigator != null) {
        info += "GPS Navigator: Functional" + "\n";
    } else {
        info += "GPS Navigator: N/A" + "\n";
    }

    return info;
  }
}