import '../buttons/android_button.dart';
import '../buttons/button.dart';
import 'scaffold.dart';

class AndroidScaffold extends Scaffold {
  @override
  Button createButton() => AndroidButton();
}