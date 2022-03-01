import 'buttons/button.dart';
import 'checkboxes/checkbox.dart';
import 'scaffold_factory/macos_scaffold.dart';
import 'scaffold_factory/scaffold_factory.dart';
import 'scaffold_factory/windows_scaffold.dart';

class Display {
  late Button _button;
  late Checkbox _checkbox;

  Display(ScaffoldFactory scaffold) {
    _button = scaffold.createButton();
    _checkbox = scaffold.createCheckbox();
  }

  void paint() {
    _button.paint();
    _checkbox.paint();
  }
}

class Application {
  static Display configureDisplay() 
  {
    late Display display;
    late ScaffoldFactory scaffold;

    String osName = 'macos';

    if (osName == 'windows') {
      scaffold = WindowsScaffold();
      display = Display(scaffold);
    } else {
      scaffold = MacOSScaffold();
      display = Display(scaffold);
    }

    return display;
  }
}

void main() {
  Display display = Application.configureDisplay();
  display.paint();
}