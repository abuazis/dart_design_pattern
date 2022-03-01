import '../buttons/button.dart';
import '../buttons/windows_button.dart';
import '../checkboxes/checkbox.dart';
import '../checkboxes/windows_checkbox.dart';
import 'scaffold_factory.dart';

class WindowsScaffold extends ScaffoldFactory {
  @override
  Button createButton() => WindowsButton();

  @override
  Checkbox createCheckbox() => WindowsCheckbox();
}