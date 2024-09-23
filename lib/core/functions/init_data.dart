import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/depencency_injection.dart';
import '../helper/cached_helper.dart';
import '../helper/location_helper.dart';
import '../helper/sqflite_helper/sqflite_helper.dart';
import '../widgets/simple_observer_bolc.dart';

abstract class InitData {
  static Future<void> initData() async {
   
        WidgetsFlutterBinding.ensureInitialized();
        await setUpGetIt();
        await ScreenUtil.ensureScreenSize();
        await CacheHelper.onInitCacheHelper();
        await LocationService().cheekLocationPermision();
        await EasyLocalization.ensureInitialized();
        Bloc.observer = SimpleObserver();
        await SqlHelper.inizalizeDb();
      
  }
}
