import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constins/const.dart';
import '../core/routers/routers.dart';
import 'home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';

class AmanStore extends StatelessWidget {
  const AmanStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
   designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return BlocProvider(
           create: (context) => HomeScreenCubit(),
          child: MaterialApp.router(
            theme: ThemeData(fontFamily: cairoFont),
            locale: context.locale,
            routerConfig: Routers.routers,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}