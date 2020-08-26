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
          ],
        ),
      ),
    );
  }
}
