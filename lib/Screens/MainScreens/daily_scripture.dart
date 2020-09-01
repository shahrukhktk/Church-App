import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';

class Scriptures extends StatefulWidget {
  @override
  _ScripturesState createState() => _ScripturesState();
}

class _ScripturesState extends State<Scriptures> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.decentPurple,
      body: ListView(

        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('SCRIPTURE DAILY', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
                  ),),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/scripture1.png'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/scripture2.png'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/scripture3.png'),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/download_icon.png'),
                  ),

                  SizedBox(width: 20,),

                  Image(
                    image: AssetImage('images/share_icon.png'),
                  ),
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
