import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';

class MainDrawerActivity extends StatefulWidget {
  @override
  _MainDrawerActivityState createState() => _MainDrawerActivityState();
}

class _MainDrawerActivityState extends State<MainDrawerActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Home', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
        ),),
        backgroundColor: AppColor.themeColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/user_image.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text('Lauren Mason', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
                        ),),

                        Text('lauren_mason@mail.com', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.white,
                        ),),

                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColor.themeColor,
              ),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/channel.png'),),
              title: Text('Channel', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/rooms.png'),),
              title: Text('Rooms', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/payment.png'),),
              title: Text('Payment', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/schedule.png'),),
              title: Text('Schedule', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/notes.png'),),
              title: Text('Notes', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/manage_assigned.png'),),
              title: Text('Manage Assigned', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

            ListTile(
              onTap: (){

              },
              leading: Image(image: AssetImage('images/rededicated.png'),),
              title: Text('Re-dedicate', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
