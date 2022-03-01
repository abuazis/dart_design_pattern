import 'shapes/circle.dart';
import 'shapes/rectangle.dart';

void main() {
  Circle circle = new Circle();
  circle.x = 10;
  circle.y = 20;
  circle.radius = 15;
  circle.color = "red";

  Circle anotherCircle = circle.clone as Circle;

  print(circle == anotherCircle);

  Rectangle rectangle = Rectangle();
  rectangle.width = 10;
  rectangle.height = 20;
  rectangle.color = "blue";

  Rectangle anotherRectangle = rectangle.clone as Rectangle;

  print(rectangle == anotherRectangle);
}