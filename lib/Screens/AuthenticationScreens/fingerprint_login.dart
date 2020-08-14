import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/login.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';

class FingerPrintLogin extends StatefulWidget {
  @override
  _FingerPrintLoginState createState() => _FingerPrintLoginState();
}

class _FingerPrintLoginState extends State<FingerPrintLogin> {

  @override
  Widget build(BuildContext context) {

    AlertDialog alertDialog = AlertDialog(
      title: Icon(Icons.check_circle, color: Color.fromARGB(255, 39, 23, 112), size: 60,),
      content: GestureDetector(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen()),);
        },
        child: Text('Fingerprint matched\n\n\n\nOkay\n', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );


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
              child: GestureDetector(
                  child: Icon(
                    Icons.fingerprint, color: Colors.grey, size: 150,
                  ),
                onTap: ()
                {
                  showDialog(context: context,  builder: (_) => alertDialog);
                },
              ),
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
