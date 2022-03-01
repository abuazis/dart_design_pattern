import 'round_peg.dart';

class RoundHole {
  double _radius;

  RoundHole(this._radius);

  double get getRadius => _radius;

  bool fits(RoundPeg peg) {
    bool result;
    result = getRadius >= peg.getRadius!;
    return result;
  } 
}