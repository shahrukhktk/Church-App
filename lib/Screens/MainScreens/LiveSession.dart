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

          Stack(
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
                      return Center(child: CircularProgressIndicator());
                    }
                },
              ),
              Positioned(
                top:10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 60,
                        height: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Center(
                            child: Text('LIVE', style: TextStyle(
                              color: Colors.white, fontSize: 14.0, fontFamily: 'SFProDisplay', fontWeight: FontWeight.normal,
                            ),),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 145.0, top: 20.0),
                      child: FloatingActionButton(
                        backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              _controller.play();
                            }
                          });
                        },
                        child:
                        Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow, color: AppColor.themeColor,),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: SizedBox(
                        width: 360,
                        height: 40,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(0.0)
                          ),
                          child: Center(
                            child: Text('Power of Grace', style: TextStyle(
                              color: Colors.white, fontSize: 16.0, fontFamily: 'SFProDisplay', fontWeight: FontWeight.normal,
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('images/livestream1.png'), height: 150,),
                    Image(image: AssetImage('images/livestream2.png'), height: 150,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('images/livestream3.png'), height: 150,),
                    Image(image: AssetImage('images/livestream4.png'), height: 150,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage('images/livestream5.png'), height: 150,),
                    Image(image: AssetImage('images/livestream6.png'), height: 150,),
                  ],
                ),
              ),

            ],
          ),
          // GridView.count(
          //   crossAxisCount: 2,
          //   children: <Widget> [
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //     Image(image: AssetImage('images/livestream1.png'),),
          //
          //     ]),

        ],
      ),

    );
  }
}
