import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'presentation/di/locator.dart';
import 'presentation/screen/app/app.dart';

void mainDelegate() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await setupLocator();

  runApp(const App());
}
