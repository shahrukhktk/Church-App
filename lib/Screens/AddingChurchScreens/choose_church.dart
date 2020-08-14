import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/AddingChurchScreens/add_new_church.dart';
import 'package:rccg_app/Screens/AddingChurchScreens/welcome_church_screen.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/facerecognition_login.dart';
import 'package:rccg_app/Screens/AuthenticationScreens/signup.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

class ChooseChurch extends StatefulWidget {
  @override
  _ChooseChurchState createState() => _ChooseChurchState();
}

class _ChooseChurchState extends State<ChooseChurch> {

  @override
  Widget build(BuildContext context) {

    AlertDialog alertDialog = AlertDialog(
      title: Icon(Icons.check_circle, color: Color.fromARGB(255, 39, 23, 112), size: 60,),
      content: GestureDetector(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => WelcomeChurchScreen()),);
        },
        child: Text('Joined Succesful\n\n\n\nOkay\n', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Join Your Church', style: TextStyle(
            fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white,
          ),),
        ),
        backgroundColor: Color.fromARGB(255, 39, 23, 112),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[

          SizedBox(height: 20,),

          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(image: AssetImage('images/church_logo.png'), height: 130,),
              )),

          SizedBox(height: 20,),

          SearchBarClass(),

          SizedBox(height: 40,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[

                SizedBox(
                  height: 220,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage('images/logo.png'), height: 50,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('RCCG CITY OF DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.location_on, color: Color.fromARGB(255, 39, 23, 112),),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('Logos State', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 39, 23, 112),
                                ),),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Pst. KINGSLEY DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          GestureDetector(
                            onTap: ()
                            {
                              showDialog(context: context,  builder: (_) => alertDialog);
                            },
                            child: SizedBox(
                              height: 30,
                              width: 120,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 39, 23, 112),
                                ),
                                child: Center(
                                  child: Text('JOIN', style: TextStyle(
                                    fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white,
                                  ),),
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                SizedBox(
                  height: 220,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage('images/logo.png'), height: 50,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('RCCG CITY OF DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.location_on, color: Color.fromARGB(255, 39, 23, 112),),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('Logos State', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 39, 23, 112),
                                ),),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Pst. KINGSLEY DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          SizedBox(
                            height: 30,
                            width: 120,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 39, 23, 112),
                              ),
                              child: Center(
                                child: Text('JOIN', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white,
                                ),),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                SizedBox(
                  height: 220,
                  width: 200,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: AssetImage('images/logo.png'), height: 50,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('RCCG CITY OF DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.location_on, color: Color.fromARGB(255, 39, 23, 112),),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text('Logos State', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 39, 23, 112),
                                ),),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Pst. KINGSLEY DAVID', style: TextStyle(
                              fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black,
                            ),),
                          ),

                          SizedBox(
                            height: 30,
                            width: 120,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 39, 23, 112),
                              ),
                              child: Center(
                                child: Text('JOIN', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white,
                                ),),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 40,),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddChurchScreen()),);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Can’t find your church?   ", textAlign: TextAlign.center, style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.grey[700]
                ),),
                Text(
                  "Click Here", textAlign: TextAlign.center, style: TextStyle(
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
