import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/widgets/searchbar.dart';

class MainDrawerActivity extends StatefulWidget {
  @override
  _MainDrawerActivityState createState() => _MainDrawerActivityState();
}

class _MainDrawerActivityState extends State<MainDrawerActivity> {

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
        child: Column(
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

    final commentForm = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Color.fromARGB(255, 39, 23, 112),
          focusColor: Color.fromARGB(255, 39, 23, 112),
          labelText: "Add a comment",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          prefixIcon: Icon(Icons.insert_emoticon, color: Color.fromARGB(255, 39, 23, 112),),
          fillColor: Color.fromARGB(255, 39, 23, 112),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 23, 112),
              width: 1.0,
            ),
          ),
        )
    );

    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: <Widget>[
            Image(image: AssetImage('images/logo.png'), height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('RCCG', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white,
              ),),
            ),
          ],
        ),
        backgroundColor: AppColor.themeColor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.room),
          ),
        ],
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

            Divider(
              thickness: 1,
              color: Colors.grey,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: ListTile(
                onTap: (){

                },
                leading: Image(image: AssetImage('images/logout.png'),),
                title: Text('Logout', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black,
                ),),
              ),
            ),

          ],
        ),
      ),

      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Stories', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Image(image: AssetImage('images/image1.png'),),
                  Image(image: AssetImage('images/image2.png'),),
                  Image(image: AssetImage('images/image3.png'),),
                  Image(image: AssetImage('images/image4.png'),),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage('images/post_image.png'),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Live Sessions', style: TextStyle(
                  fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black,
                ),),

                SizedBox(
                  height: 40,
                  width: 100,
                  child: FlatButton(
                    color: AppColor.themeColor,
                    onPressed: (){
                      //TODO Go To Live Session
                    },
                    child: Center(
                      child: Text('View All', style: TextStyle(
                        fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      //NAVIGATE TO Live Session 1
                    },
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage('images/live1.png'),),
                        Positioned(
                          child: SizedBox(
                            height: 20,
                            width: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text('Live', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white,
                                ),),
                              ),
                            ),
                          ),
                          top: 20,
                          left: 95,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      //NAVIGATE TO LIVE SESSION 2
                    },
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage('images/live2.png'),),
                        Positioned(
                          child: SizedBox(
                            height: 20,
                            width: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text('Live', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white,
                                ),),
                              ),
                            ),
                          ),
                          top: 20,
                          left: 95,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      //NAVIGATE TO LIVE SESSION 3
                    },
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage('images/live3.png'),),
                        Positioned(
                          child: SizedBox(
                            height: 20,
                            width: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text('Live', style: TextStyle(
                                  fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white,
                                ),),
                              ),
                            ),
                          ),
                          top: 20,
                          left: 95,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

          //first post
          Divider(
            thickness: 1,
            height: 10,
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Image(image: AssetImage('images/logo.png'), height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Text('RCCG HQ', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                  ),),
                ),

                Icon(Icons.check_circle, color: AppColor.themeColor, size: 18,),

                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Icon(Icons.more_vert),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Image(image: AssetImage('images/post_image2.png'),),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image(image: AssetImage('images/ic_like.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image(image: AssetImage('images/ic_comment.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                            onTap: (){
                              showDialog(context: context,  builder: (_) => alertDialog);
                            },
                            child: Image(image: AssetImage('images/ic_share.png'),)),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('146 Likes', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text('The blessings of the lord will manifest in your family; whatever you do will prosper! If you believe it shout a very loud amen!', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10, right: 15.0, bottom: 10),
            child: Text('View All 15 Comments', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 120,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.decentgrey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/user_image.png'),
                          ),
                        ),

                        Text('@zainabchukwu: ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black,
                        ),),

                        Text('I was highly blessed ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),

                        Icon(Icons.favorite, color: Colors.red,),

                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Icon(Icons.thumb_up, color: AppColor.themeColor,),
                        ),

                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/user_image.png'),
                          ),
                        ),

                        Text('@bolanlepepperdem: ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black,
                        ),),

                        Text('Me too! ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),

                        Icon(Icons.favorite, color: Colors.red,),

                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Icon(Icons.thumb_up, color: AppColor.themeColor,),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0,),
            child: commentForm,
          ),

          //2nd post
          Divider(
            thickness: 1,
            height: 10,
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Image(image: AssetImage('images/logo.png'), height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Text('Pst. David', style: TextStyle(
                    fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black,
                  ),),
                ),

                Icon(Icons.check_circle, color: AppColor.themeColor, size: 18,),

                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Icon(Icons.more_vert),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Image(image: AssetImage('images/post_image3.png'),),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image(image: AssetImage('images/ic_like.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image(image: AssetImage('images/ic_comment.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: GestureDetector(
                            onTap: (){
                              showDialog(context: context,  builder: (_) => alertDialog);
                            },
                            child: Image(image: AssetImage('images/ic_share.png'),)),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('146 Likes', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blue,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text('The blessings of the lord will manifest in your family; whatever you do will prosper! If you believe it shout a very loud amen!', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10, right: 15.0, bottom: 10),
            child: Text('View All 15 Comments', style: TextStyle(
              fontFamily: 'SFProDisplay', fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.grey,
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 120,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.decentgrey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/user_image.png'),
                          ),
                        ),

                        Text('@zainabchukwu: ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black,
                        ),),

                        Text('I was highly blessed ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),

                        Icon(Icons.favorite, color: Colors.red,),

                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Icon(Icons.thumb_up, color: AppColor.themeColor,),
                        ),

                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/user_image.png'),
                          ),
                        ),

                        Text('@bolanlepepperdem: ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black,
                        ),),

                        Text('Me too! ', style: TextStyle(
                          fontFamily: 'SFProDisplay', fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey,
                        ),),

                        Icon(Icons.favorite, color: Colors.red,),

                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Icon(Icons.thumb_up, color: AppColor.themeColor,),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0,),
            child: commentForm,
          ),

        ],
      ),

    );
  }
}
