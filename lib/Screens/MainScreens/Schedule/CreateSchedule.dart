import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/MainScreens/Schedule/ListOfSchedule.dart';
import 'package:rccg_app/Screens/widgets/dropdown_widget.dart';
import 'package:rccg_app/Screens/widgets/recurrencetype_dropdown.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

class CreateNewSchedule extends StatefulWidget {
  @override
  _CreateNewScheduleState createState() => _CreateNewScheduleState();
}

class _CreateNewScheduleState extends State<CreateNewSchedule> {

  @override
  Widget build(BuildContext context) {

    AlertDialog ScheduleCreatedAlert = AlertDialog(
      title: Icon(Icons.check_circle, color: Color.fromARGB(255, 39, 23, 112), size: 60,),
      content: GestureDetector(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => ScheduleList()),);
        },
        child: Text('Schedule Successfully Created\n\n\n\nOkay\n', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text('ADD NEW USER', style: TextStyle(
        fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
      ),),
      content: GestureDetector(
        onTap: ()
        {
          // Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => UploadProfilePicture()),);
        },
        child: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: SearchBarClass(),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: Image(image: AssetImage('images/jason.png'),),
                title: Text('Jason Walberg', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.themeColor
                    ),
                    child: Center(
                      child: Text('ADD', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              color: AppColor.decentgrey,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: Image(image: AssetImage('images/micheal.png'),),
                title: Text('Micheal', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.themeColor
                    ),
                    child: Center(
                      child: Text('ADD', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              color: AppColor.decentgrey,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: Image(image: AssetImage('images/isabella.png'),),
                title: Text('Isabella Smith', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.themeColor
                    ),
                    child: Center(
                      child: Text('ADD', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              color: AppColor.decentgrey,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: Image(image: AssetImage('images/jason.png'),),
                title: Text('Jason Walberg', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.themeColor
                    ),
                    child: Center(
                      child: Text('ADD', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              color: AppColor.decentgrey,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListTile(
                leading: Image(image: AssetImage('images/micheal.png'),),
                title: Text('Micheal', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColor.themeColor
                    ),
                    child: Center(
                      child: Text('ADD', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            Divider(
              thickness: 1,
              color: AppColor.decentgrey,
            ),


          ],
        ),
      ),
    );

    final title = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Title",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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

    final date = TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Date",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.calendar_today, color: Color.fromARGB(255, 39, 23, 112),),
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

    final time = TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Time",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.access_time, color: Color.fromARGB(255, 39, 23, 112),),
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

    final location = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Location",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.room, color: Color.fromARGB(255, 39, 23, 112),),
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

    final description = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Description",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
      appBar: AppBar(
        title: Text('Create Schedule', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
        ),),
        backgroundColor: AppColor.themeColor,
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
            child: title,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            child: date,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            child: time,
          ),

          //drop down for member type
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recurrence type or one time', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black,
                ),),

                RecurrenceTypeDropDown(),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            child: location,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 15, right: 15),
            child: description,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Add User', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black,
                ),),

                GestureDetector(
                    onTap: (){
                      showDialog(context: context,  builder: (_) => alertDialog);
                    },
                    child: Icon(Icons.add_circle, color: AppColor.themeColor, size: 50,))

              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
            child: FlatButton(
              onPressed: ()
              {
                showDialog(context: context,  builder: (_) => ScheduleCreatedAlert);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.themeColor,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text(
                    'Create', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white,
                  ),),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
