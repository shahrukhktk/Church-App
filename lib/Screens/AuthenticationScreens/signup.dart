import 'package:flutter/material.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {

    final emailTextForm = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Email",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.alternate_email, color: Colors.red),
          fillColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
    );

    final phoneTextForm = TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Phone",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.phone, color: Colors.red),
          fillColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
    );

    final userTextForm = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Name",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.person_outline, color: Colors.red),
          fillColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        )
    );

    final passwordTextForm = TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          focusColor: Colors.red,
          labelText: "Password",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.lock_open, color: Colors.red),
          fillColor:Colors.red,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
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

          SizedBox(height: 70,),

          Center(
            child: Text('SIGN UP', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text('register your account for free', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey[600],
            ),),
          ),

          SizedBox(height: 50,),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: userTextForm,
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

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Colors.red,
                child: new Text('SIGN UP', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
//                  Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => OrderConfirmation()),);
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
                  "Do you already have an account?  ", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                ),),
                Text(
                  "Log in", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.red
                ),),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      "ENGLISH", textAlign: TextAlign.center, style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.red
                    ),),
                    onTap: ()
                    {
                      //TODO: ENGLISH LANGUAGE TRANSLATION
                    },
                  ),

                Container(
                  height: 20.0,
                  width: 1.0,
                  color: Colors.grey[700],
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),

                  GestureDetector(
                    child: Text(
                      "SPANISH", textAlign: TextAlign.center, style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                    ),),
                    onTap: ()
                    {
                      //TODO: SPANISH LANGUAGE TRANSLATION
                    },
                  ),
                ],
              ),
            ),

        ],
      ),
    );
  }
}
