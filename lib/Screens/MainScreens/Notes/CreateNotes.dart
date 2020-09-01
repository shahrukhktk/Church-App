import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/MainScreens/Schedule/ListOfSchedule.dart';
import 'package:rccg_app/Screens/widgets/dropdown_widget.dart';
import 'package:rccg_app/Screens/widgets/recurrencetype_dropdown.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

import 'ListOfNotes.dart';

class CreateNewNotes extends StatefulWidget {
  @override
  _CreateNewNotesState createState() => _CreateNewNotesState();
}

class _CreateNewNotesState extends State<CreateNewNotes> {

  @override
  Widget build(BuildContext context) {

    AlertDialog NewNoteAlert = AlertDialog(
      title: Icon(Icons.check_circle, color: Color.fromARGB(255, 39, 23, 112), size: 60,),
      content: GestureDetector(
        onTap: ()
        {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => NotesList()),);
        },
        child: Text('Scripture Successfully Added To Notes\n\n\n\nOkay\n', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.normal, color: Colors.black,
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text('ADD Scriptures', style: TextStyle(
        fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
      ),),
      content: GestureDetector(
        onTap: ()
        {
          // Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => UploadProfilePicture()),);
        },
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: SearchBarClass(),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Genesis 10 : 2', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
                  ),),

                  SizedBox(
                    height: 30,
                    width: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.themeColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text('ADD', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white,
                        ),),
                      ),
                    ),
                  )

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ninvidunt ut labore et dolore magna aliquyan \nerat, sed diam voluptua. At vero eos et \naccusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata \nsanctus est Lorem ipsum dolor sit amet.', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ninvidunt ut labore et dolore magna aliquyan \nerat, sed diam voluptua. At vero eos et \naccusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata \nsanctus est Lorem ipsum dolor sit amet.', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
                      ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod \ninvidunt ut labore et dolore magna aliquyan \nerat, sed diam voluptua. At vero eos et \naccusam et justo duo dolores et ea rebum. \nStet clita kasd gubergren, no sea takimata \nsanctus est Lorem ipsum dolor sit amet.', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.grey,
                      ),),
                    ),
                  ],
                ),
              ),
            )

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
        title: Text('Add Notes', style: TextStyle(
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
            child: description,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Add Scripture from the Bible', style: TextStyle(
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
            padding: const EdgeInsets.only(left: 8, right: 8, top: 100),
            child: FlatButton(
              onPressed: ()
              {
                showDialog(context: context,  builder: (_) => NewNoteAlert);
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
