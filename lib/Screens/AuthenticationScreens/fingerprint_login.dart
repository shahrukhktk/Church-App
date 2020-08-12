import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';

class FingerPrintLogin extends StatefulWidget {
  @override
  _FingerPrintLoginState createState() => _FingerPrintLoginState();
}

class _FingerPrintLoginState extends State<FingerPrintLogin> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 20,),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('images/logo.png'), height: 100,),
              ),
          ),

          Center(
            child: Text('Login via Fingerprint', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 80,),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(Icons.fingerprint, color: Colors.grey, size: 150,)
            ),
          ),

          Center(
            child: Text('Place your thumb on the sensor for quick login', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.grey,
               height: 1.5
            ),
              textAlign: TextAlign.center,
            ),
          ),


        ],
      ),
    );
  }
}
