import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AddingChurchScreens/choose_church.dart';
import 'package:rccg_app/Screens/AddingChurchScreens/welcome_church_screen.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/facerecognition_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/signup.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';

import 'fingerprint_login.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    final emailTextForm = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.alternate_email, color: Color.fromARGB(255, 39, 23, 112),),
          fillColor: Color.fromARGB(255, 39, 23, 112),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
              width: 1.0,
            ),
          ),
        )
    );

    final passwordTextForm = TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.lock_open, color:Color.fromARGB(255, 39, 23, 112),),
          fillColor: Color.fromARGB(255, 39, 23, 112),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
              width: 1.0,
            ),
          ),
        )
    );

    final forgotPassword = FlatButton(
      onPressed: () {
        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CodeVerification()),);
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text('forgot password',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
            fontFamily: 'SFProDisplay',
            color: Color.fromARGB(255, 39, 23, 112),
          ),
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
              )),

          Center(
            child: Text('LOGIN', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: emailTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: passwordTextForm,
          ),

          Padding(
            padding: EdgeInsets.only(right: 0.0),
            child: forgotPassword,
          ),

          //login via email btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: new Text('Login', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeChurchScreen()),);
                },
              ),
            ),
          ),

          SizedBox(height: 10,),

          //fingerprint btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.fingerprint, color: Colors.white, size: 30,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 90.0),
                        child: Text('Fingerprint', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                        ),),
                      ),
                    ),
                  ],
                ),
                onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FingerPrintLogin()),);
                },
              ),
            ),
          ),

          SizedBox(height: 10,),

          //face recongintion btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                        child: Image(image: AssetImage("images/face_ic.png"),),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 75.0),
                        child: Text('Face Recognition', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                        ),),
                      ),
                    ),
                  ],
                ),
                onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FaceLogin()),);
                },
              ),
            ),
          ),


          SizedBox(height: 20,),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account yet?  ", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                ),),
                Text(
                  "Sign Up", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 39, 23, 112),
                ),),
              ],
            ),
          ),

          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
