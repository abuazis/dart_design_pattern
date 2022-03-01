import 'shape.dart';

class Circle extends Shape {
  int? radius;

  Circle([Circle? target]) : super(target) {
    if (target != null) {
      radius = target.radius;
    }
  }

  @override
  Shape get clone => Circle(this);

  @override
  bool operator ==(dynamic other) {
    if (other is! Circle) return false;
    Circle shape2 = other;
    return shape2.radius == radius;
  }
}