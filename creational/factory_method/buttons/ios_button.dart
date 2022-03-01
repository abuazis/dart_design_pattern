import 'button.dart';

class IOSButton implements Button {
  @override
  void onClick() => print("Cupertino Button Clicked! 'Hello iOS User!'");

  @override
  void render() => print("CupertinoButton()");
}