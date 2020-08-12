import 'package:flutter/material.dart';
import 'Screens/splashscreen.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.white,
    fontFamily: "Monteserrat",
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));