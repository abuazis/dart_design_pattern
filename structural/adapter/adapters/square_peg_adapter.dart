import 'dart:math';

import '../round/round_peg.dart';
import '../square/square_peg.dart';

class SquarePegAdapter extends RoundPeg {
  SquarePeg _peg;

  SquarePegAdapter(this._peg);

  // Calculate a minimum circle radius, which can fit this peg.
  double get getRadius => sqrt(pow((_peg.getWidth as double) / 2, 2) * 2);
}