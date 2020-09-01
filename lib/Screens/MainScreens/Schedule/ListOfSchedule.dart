import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/MainScreens/Schedule/CreateSchedule.dart';

import 'ViewSchedule.dart';

class ScheduleList extends StatefulWidget {
  @override
  _ScheduleListState createState() => _ScheduleListState();
}

class _ScheduleListState extends State<ScheduleList> {

  @override
  Widget build(BuildContext context) {

    Widget listOfSchedule(String title, String subtitle, String trailText)
    {
      return ListTile(
        onTap: ()
        {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewScheduleScreen()));
        },
        leading: Image(image: AssetImage('images/schedule_icon.png'),),
        title: Text('$title', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
        ),),
        subtitle: Text('$subtitle', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey,
        ),),
        trailing: Text('$trailText', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
        ),),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Schedule', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
        ),),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateNewSchedule()));
              },
                child: Icon(Icons.add, color: Colors.white,)),
          ),
        ],
        backgroundColor: AppColor.themeColor,
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Bible Study", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("Title", "Lorem ipsum dolor sit amet, consetetur sadipscing .", "Learn more"),
            ),
          ),


        ],
      ),
    );
  }
}
