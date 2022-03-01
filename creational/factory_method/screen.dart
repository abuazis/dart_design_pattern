import 'scaffold/android_scaffold.dart';
import 'scaffold/ios_scaffold.dart';
import 'scaffold/scaffold.dart';

const CURRENT_OS = 'ios';

class Screen {
  static late Scaffold _scaffold;

  static void configure() 
  {
    if (CURRENT_OS == 'android') {
      _scaffold = AndroidScaffold();
    } else {
      _scaffold = IOSScaffold();
    }
  }

  static void runScreen() {
    _scaffold.renderView();
  }
}

void main() {
  Screen.configure();
  Screen.runScreen();
}