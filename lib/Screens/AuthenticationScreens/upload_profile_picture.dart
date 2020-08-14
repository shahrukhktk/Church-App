import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/login.dart';
import 'package:rccg_app/Screens/ResetPasswordScreens/codeverification.dart';

class UploadProfilePicture extends StatefulWidget {
  @override
  _UploadProfilePictureState createState() => _UploadProfilePictureState();
}

class _UploadProfilePictureState extends State<UploadProfilePicture> {

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
        child: Text('Upload Succesful\n\n\n\nOkay\n', style: TextStyle(
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
                child: Image(image: AssetImage('images/logo.png'), height: 80,),
              ),
          ),

          Center(
            child: Text('Upload your profile picture', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black,
            ),),
          ),

          SizedBox(height: 20,),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                  child: Image(
                    image: AssetImage('images/upload_profile_avatar.png'),
                  ),
                onTap: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),);
                },
              ),
            ),
          ),

          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: new RaisedButton(
                color: Color.fromARGB(255, 39, 23, 112),
                child: new Text('Upload Picture', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                ),),
                onPressed: ()
                {
                  showDialog(context: context,  builder: (_) => alertDialog);
                },
              ),
            ),
          ),

          SizedBox(height: 40,),

          Center(
            child: Text('Skip', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.normal, color: Color.fromARGB(255, 39, 23, 112),
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
