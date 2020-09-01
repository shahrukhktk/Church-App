import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rccg_app/Screens/Constant/constant.dart';
import 'package:rccg_app/Screens/MainScreens/daily_scripture.dart';
import 'package:rccg_app/Screens/MainScreens/upload_story.dart';
import 'package:video_player/video_player.dart';


class LiveSessionScreen extends StatefulWidget {
  @override
  _LiveSessionScreenState createState() => _LiveSessionScreenState();
}

class _LiveSessionScreenState extends State<LiveSessionScreen> {

  //video controller init
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Icon(Icons.arrow_back, color: Colors.black,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image(image: AssetImage('images/logo.png'), height: 30,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('RCCG', style: TextStyle(
                fontFamily: 'SFProDisplay', fontSize: 18.0, fontWeight: FontWeight.bold, color: AppColor.themeColor,
              ),),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.room, color: AppColor.themeColor,),
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[

          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done)
                {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  );
                }
              else
                {
                  return CircularProgressIndicator();
                }
            },
          ),


        ],
      ),

    );
  }
}
