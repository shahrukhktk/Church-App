import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/MainScreens/Notes/CreateNotes.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

class NotesList extends StatefulWidget {
  @override
  _NotesListState createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {

  @override
  Widget build(BuildContext context) {

    AlertDialog alertDialog = AlertDialog(
      title: Text('Share with', style: TextStyle(
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
                      child: Text('Share', style: TextStyle(
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
                      child: Text('Share', style: TextStyle(
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
                      child: Text('Share', style: TextStyle(
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
                      child: Text('Share', style: TextStyle(
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
                      child: Text('Share', style: TextStyle(
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

    Widget listOfSchedule(String title, String subtitle)
    {
      return ListTile(
        onTap: ()
        {
          showDialog(context: context,  builder: (_) => alertDialog);
        },
        title: Text('$title', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black,
        ),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text('$subtitle', style: TextStyle(
            fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey,
          ),),
        ),
        trailing: Image(image: AssetImage('images/share_icon.png'),)
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notes', style: TextStyle(
          fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
        ),),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateNewNotes()));
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
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Card(
              elevation: 1,
              child: listOfSchedule("God's Promises", "When God made promise the man, he scope tu mana",),
            ),
          ),






        ],
      ),
    );
  }
}
