import 'package:flutter/services.dart';

import 'core/functions/init_data.dart';
import 'features/localization_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await InitData.initData();
  runApp(
    const LocalizationApp(),
  );
}
