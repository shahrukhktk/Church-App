import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AddingChurchScreens/welcome_church_screen.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/facerecognition_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/fingerprint_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/signup.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';

class AddChurchScreen extends StatefulWidget {
  @override
  _AddChurchScreenState createState() => _AddChurchScreenState();
}

class _AddChurchScreenState extends State<AddChurchScreen> {

  @override
  Widget build(BuildContext context) {

    final parishNameTextForm = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Parish Name:",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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

    final pastorNameTextForm = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Pastor Name:",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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

    final phoneTextForm = TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Phone",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.phone, color: Color.fromARGB(255, 39, 23, 112),),
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
            child: parishNameTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: pastorNameTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: phoneTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: emailTextForm,
          ),


          //Submit church details btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: new Text('SUBMIT', style: TextStyle(
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



        ],
      ),
    );
  }
}
