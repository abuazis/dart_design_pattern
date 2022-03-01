abstract class Shape {
  int? x;
  int? y;
  String? color;

  Shape([Shape? target]) {
    if (target != null) {
      x = target.x;
      y = target.y;
      color = target.color;
    }
  }

  Shape get clone;

  @override
  bool operator ==(dynamic other) {
    if (other is! Shape) return false;
    Shape shape2 = other;
    return shape2.x == x && shape2.y == y && identical(shape2.color, color);
  }
}