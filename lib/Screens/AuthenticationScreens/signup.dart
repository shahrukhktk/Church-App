import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/facerecognition_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/upload_profile_picture.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';
import 'package:rccg_app/Screens/widgets/dropdown_widget.dart';

import 'fingerprint_login.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  //init radio button variable
  int selectedRadioBtn;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadioBtn = 0;
  }

  setSelectedRadioBtn(int val)
  {
    setState(() {
      selectedRadioBtn = val;
    });
  }

  @override
  Widget build(BuildContext context) {

    AlertDialog alertDialog = AlertDialog(
      title: Icon(Icons.check_circle, color: Color.fromARGB(255, 39, 23, 112), size: 60,),
      content: GestureDetector(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => UploadProfilePicture()),);
        },
        child: Text('Account Registered Successfully\n\n\n\nOkay\n', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final usernameTextForm = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Username",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 39, 23, 112),),
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

    final phoneTextForm = TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Phone",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.local_phone, color: Color.fromARGB(255, 39, 23, 112),),
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

    final confirmPasswordTextForm = TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Confirm Password",
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
            child: Text('Create Your Account', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: usernameTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: emailTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: phoneTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: passwordTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: confirmPasswordTextForm,
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Select One', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: selectedRadioBtn,
                          activeColor: Color.fromARGB(255, 39, 23, 112),

                          onChanged: (val)
                          {
                            setSelectedRadioBtn(val);
                          },
                        ),
                        Text(
                          'Pastor', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black,
                        ),),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: selectedRadioBtn,
                          activeColor: Color.fromARGB(255, 39, 23, 112),

                          onChanged: (val)
                          {
                            setSelectedRadioBtn(val);
                          },
                        ),
                        Text(
                          'Member', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black,
                        ),),
                      ],
                    ),

                  ],
                ),
              ],
            )
          ),

          //drop down for member type
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Member Type', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black,
                ),),

                DropDownClass(),

              ],
            ),
          ),

          // privacy policy check
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.check_box, color: Colors.black54,),
                Padding(
                  padding: const EdgeInsets.only(left:  10.0),
                  child: Text(
                    'By continuing to RCCG, you agree \nto our Terms & Conditions and \nConfirms that you have read our \nPrivacy Policy.', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey, height: 1.2
                  ),
                  textAlign: TextAlign.start,),
                ),

              ],
            ),
          ),

          SizedBox(height: 20,),

          //signup via email btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: new Text('Sign Up', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
                  showDialog(context: context,  builder: (_) => alertDialog);
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
                MaterialPageRoute(builder: (context) => LoginScreen()),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account?  ", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                ),),
                Text(
                  "Login", textAlign: TextAlign.center, style: TextStyle(
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
