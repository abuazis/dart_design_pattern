class Engine {
  late final double _volume;
  late double _mileage;
  late bool _started;

  Engine(this._volume, this._mileage);

  bool get isStarted => _started;
  double get getVolume => _volume;
  double get getMileage => _mileage;

  void on() {
    _started = true;
  }

  void off() {
    _started = false;
  }

  void go(double mileage) 
  {
    if (_started) {
      _mileage += mileage;
    } else {
      print("Cannot go(), you must start engine first!");
    }
  }
}