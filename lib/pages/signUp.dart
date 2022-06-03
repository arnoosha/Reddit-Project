import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit2/pages/signUp.dart';
import 'package:reddit2/welcomepage.dart';
import 'package:video_player/video_player.dart';

import 'Nav.dart';

class signUp extends StatefulWidget {

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  VideoPlayerController _controller;
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/5.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
              aspectRatio: MediaQuery.of(context).size.aspectRatio,
              // _controller.value.size.aspectRatio,
              child: VideoPlayer(_controller),

            )
                : SizedBox.expand(
              child: FittedBox(
                //fit: BoxFit.cover,
                child: SizedBox(
                  // width: _controller.value.size?.width ?? 0,
                  // height: _controller.value.size?.height ?? 20,*/
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Container( margin: EdgeInsets.only(top: 100 , left: 150), child: Image.asset('assets/images/5.png' , scale: 3.0,),),
          ],
        ),
      ),
    );
  }
}
