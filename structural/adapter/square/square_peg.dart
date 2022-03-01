import 'dart:math';

class SquarePeg {
  double? _width;

  SquarePeg([this._width]);

  double? get getWidth => _width;

  double? get getSquare => pow(_width as double, 2) as double;
}