import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/2.mp4')
      ..initialize().then((_) {
        _controller.play();
       _controller.setLooping(true);
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        /*appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(top : 20.0 , right: 10.0),
                child : InkWell(onTap : ()=>{},
                  child: Text('Skip' , style: TextStyle(fontSize: 16.0 , color: Color.fromARGB(
                      255, 205, 16, 73)), ),
                ),
              )
            ],
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          shadowColor: Color.fromARGB(0, 255, 255, 255),
        ),*/
        body: Stack(
          children : [
            Padding(padding: EdgeInsets.only(top : 20.0 , right: 10.0),
              child : InkWell(onTap : ()=>{},
                child: Text('Skip' , style: TextStyle(fontSize: 16.0 , color: Color.fromARGB(
                    255, 205, 16, 73)), ),
              ), ),
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),

            )
            : SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Container( margin: EdgeInsets.only(top: 150 , left: 130), child: Image.asset('assets/images/4.png' , scale: 6.0,),),
          ],
        ),
      ),
    );
  }
}
