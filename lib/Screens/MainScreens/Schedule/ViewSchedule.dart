import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';

class ViewScheduleScreen extends StatefulWidget {
  @override
  _ViewScheduleScreenState createState() => _ViewScheduleScreenState();
}

class _ViewScheduleScreenState extends State<ViewScheduleScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
        ),),
        backgroundColor: AppColor.themeColor,
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text('Bible Study (every week)', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Row(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.calendar_today, color: AppColor.themeColor,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('20-03-2020', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
                      ),),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.access_time, color: AppColor.themeColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('05:00 PM', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
                        ),),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text('Lorem ipsum dolor sit amet, consetetur sadispscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey, height: 1.2
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
            child: Text('Location', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
            child: Text('Eleganza Gardens, Loagos 101245 , Nigeria', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.grey,
            ),),
          ),

        ],
      ),
    );
  }
}
