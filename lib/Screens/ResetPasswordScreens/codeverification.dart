import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/resetpassword.dart';

class CodeVerification extends StatefulWidget {
  @override
  _CodeVerificationState createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {

  @override
  Widget build(BuildContext context) {

    final codeTextForm = TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Verification Code",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.verified_user, color: Color.fromARGB(255, 39, 23, 112),),
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
            child: Text('Code Verification', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: codeTextForm,
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Verification code has sent to your mobile', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
              ),),
            ),
          ),

          SizedBox(height: 50,),

          //verify btn
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: new Text('Verify', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()),);
                },
              ),
            ),
          ),

          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
