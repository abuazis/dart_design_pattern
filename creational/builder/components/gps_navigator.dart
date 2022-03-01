class GPSNavigator {
  String? _route;

  GPSNavigator([this._route]) 
  {
    if (_route != null) {
      _route = _route;
    } else {
      _route = "221b, Baker Street, London  to Scotland Yard, 8-10 Broadway, London";
    }
  }

  String? getRoute() => _route;
}