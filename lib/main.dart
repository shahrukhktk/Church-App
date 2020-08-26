import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'Screens/splashscreen.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: AppColor.themeColor,
    accentColor: AppColor.themeColor,
    fontFamily: "Monteserrat",
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));