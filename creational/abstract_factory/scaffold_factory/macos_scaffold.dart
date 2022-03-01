import '../buttons/button.dart';
import '../buttons/macos_button.dart';
import '../checkboxes/checkbox.dart';
import '../checkboxes/macos_checkbox.dart';
import 'scaffold_factory.dart';

class MacOSScaffold extends ScaffoldFactory {
  @override
  Button createButton() => MacOSButton();

  @override
  Checkbox createCheckbox() => MacOSCheckbox();
}