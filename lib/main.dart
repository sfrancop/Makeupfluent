import 'package:flutter/material.dart';
import 'package:misiontic_template/ui/app.dart';
import 'package:misiontic_template/ui/theme/text_styles.dart';
import 'ui/my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:loggy/loggy.dart';

//void main() {
//  WidgetsFlutterBinding.ensureInitialized();
//  runApp(const App());
//}
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  return runApp(const MyApp());
}
