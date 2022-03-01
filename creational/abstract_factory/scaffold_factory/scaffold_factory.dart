import '../buttons/button.dart';
import '../checkboxes/checkbox.dart';

abstract class ScaffoldFactory {
  Button createButton();
  Checkbox createCheckbox();
}