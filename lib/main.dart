import 'core/functions/init_data.dart';
import 'features/localization_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await InitData.initData();
  runApp(
    const LocalizationApp(),
  );
}
