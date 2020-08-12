import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 23, 112),
      body: Center(
        child: GestureDetector(
            child: Image(image: AssetImage('images/logo.png'),
            ),
          onTap: (){
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),);
          },
        ),
      ),
    );
  }
}
