import 'shape.dart';

class Rectangle extends Shape {
  int? width;
  int? height;

  Rectangle([Rectangle? target]) : super(target) {
    if (target != null) {
      width = target.width;
      height = target.height;
    }
  }

  @override
  Shape get clone => Rectangle(this);

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    Rectangle shape2 = other;
    return shape2.width == width && shape2.height == height;
  }
}