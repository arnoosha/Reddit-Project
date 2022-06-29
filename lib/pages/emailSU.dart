import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class emailSU extends StatefulWidget {

  @override
  State<emailSU> createState() => _emailSUState();
}

class _emailSUState extends State<emailSU> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/6.mp4')
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

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 166, 177, 41)),
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.only(top : 300.0 , left: 110.0),
              width: 200.0,
              height: 40.0,
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Email address',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 166, 177, 41)),
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.only(top : 350.0 , left: 110.0),
              width: 200.0,
              height: 40.0,
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
