import 'package:flutter/material.dart';

class UploadStory extends StatefulWidget {
  @override
  _UploadStoryState createState() => _UploadStoryState();
}

class _UploadStoryState extends State<UploadStory> {
  @override
  Widget build(BuildContext context) {

    final textWithStory = TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hoverColor: Colors.white,
          focusColor: Colors.white,
          labelText: "Reply",
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.send, color: Colors.white,),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        )
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white,)),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Image(image: AssetImage('images/user_image.png'), height: 60,),
              ),
              Text('Lauren Mason', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white,
              ),),
            ],
          ),

          Container(
            child: Center(
              child: Image(image: AssetImage('images/upload_story_image.png'), height: 450,),
            ),
          ),

          textWithStory,

        ],
      ),
    );
  }
}
