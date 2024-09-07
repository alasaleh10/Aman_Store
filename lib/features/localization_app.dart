import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'aman_app.dart';

class LocalizationApp extends StatelessWidget {
  const LocalizationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  EasyLocalization(
      startLocale: const Locale('ar'),
      path: 'assets/translations',
      supportedLocales: const [Locale('ar'), Locale('en')],
      child:
       const AmanStore()
      //  DevicePreview(
      //   builder: (context) => const AmanStore(),
      // ),
      );
  }
}