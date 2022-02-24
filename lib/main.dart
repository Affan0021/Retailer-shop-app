import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:retailer/splash/onboard.dart';
import 'package:retailer/splash/splash.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(
      ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp (
    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
      'second': (context) => SecondSplash(),
    },

  )
      )
  );
}