import '../buttons/button.dart';

abstract class Scaffold {
  Button createButton();

  void renderView() {
    Button submitButton = createButton();
    submitButton.render();
  }
}