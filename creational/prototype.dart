abstract class Shape {
  int? x;
  int? y;
  Shape clone();
}

class Rectangle implements Shape {
  int? x;
  int? y;

  int? width;
  int? height;

  int? _hashCode;
  bool isClone = false;

  String get cloneStatus => isClone 
  ? "is a clone" 
  : "is an original gangster";

  Rectangle(this.width, this.height, this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    x = source.x;
    y = source.y;
    width = source.width;
    height = source.height;
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  Rectangle clone() => Rectangle.fromSource(this);

  @override
  int get hashCode {
    if (_hashCode != null) return _hashCode!;
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode!;
  }

  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }
}

void main() {
  Rectangle ogRect = Rectangle(0, 0, 100, 100);
  Rectangle cloneRect = ogRect.clone();
  Rectangle someOtherRect = Rectangle(0, 0, 100, 100);

  print("ogRect ${ogRect.cloneStatus}.");
  print("cloneRect ${cloneRect.cloneStatus}.");
  print("someOtherRect ${someOtherRect.cloneStatus}.");

  String cloneIsClone = ogRect == cloneRect ? "is a clone of" : "is not a clone of";
  print("\r\ncloneRect $cloneIsClone ogRect.");

  String someRectIsClone = ogRect == someOtherRect ? "is a clone of" : "is not a clone of";
  print("someOtherRect $someRectIsClone ogRect.");
}