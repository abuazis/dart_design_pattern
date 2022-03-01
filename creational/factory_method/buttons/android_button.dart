import 'button.dart';

class AndroidButton implements Button {
  @override
  void onClick() => print("Material Button Clicked! 'Hello Android User!'");

  @override
  void render() => print("MaterialButton()");
}