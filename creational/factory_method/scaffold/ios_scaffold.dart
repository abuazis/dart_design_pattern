import '../buttons/button.dart';
import '../buttons/ios_button.dart';
import 'scaffold.dart';

class IOSScaffold extends Scaffold {
  @override
  Button createButton() => IOSButton();
}