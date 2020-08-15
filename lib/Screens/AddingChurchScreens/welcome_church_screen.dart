import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/facerecognition_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/signup.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

class WelcomeChurchScreen extends StatefulWidget {
  @override
  _WelcomeChurchScreenState createState() => _WelcomeChurchScreenState();
}

class _WelcomeChurchScreenState extends State<WelcomeChurchScreen> {

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
                child: Text('WELCOME!', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 25.0, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 39, 23, 112),
                ),),
              )),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('images/church_welcome.png'), height: 250,),
              )),

          SizedBox(height: 20,),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Daddy & Mummy GO', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black
                ),),
              )),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left:20, right: 20),
                child: Text('We are most delighted to welcome you to church, and as you walk into church, you will be blessedtremendously in Jesus’ name. Amen!', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey, height: 1.2
                ),
                textAlign: TextAlign.center,),
              )),

          GestureDetector(
            onTap: ()
            {
//              Navigator.push(context,
//                MaterialPageRoute(builder: (context) => FeedScreen()),);
//              showDialog(context: context,  builder: (_) => alertDialog);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
              child: SizedBox(
                height: 55,
                width: 150,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 39, 23, 112),
                  ),
                  child: Center(
                    child: Text('WALK INTO CHURCH', style: TextStyle(
                      fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
