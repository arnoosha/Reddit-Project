import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit2/pages/googleSU.dart';
import 'package:reddit2/pages/emailSU.dart';
import 'package:reddit2/pages/Login.dart';
import 'package:reddit2/pages/facebookSU.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Nav.dart';
import 'package:reddit2/welcomepage.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
    _controller = VideoPlayerController.asset('assets/videos/2.mp4')
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
              margin: EdgeInsets.only(top: 100 , left: 150), child: Image.asset('assets/images/5.png' , scale: 3.0,),
            ),
            Container(
              margin: EdgeInsets.only(left: 350 , top: 50),
              child : InkWell(onTap : ()=>{
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => welcomePage()),
                ),
              },
                child: Text('Exit' , style:  TextStyle(fontSize: 20.0 ,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(
                    255, 56, 112, 217),
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.5, 2.5),
                      blurRadius: 5.0,
                      color: Color.fromARGB(255, 56, 112, 217),
                    ),
                  ],
                ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 320 , left: 70),
              child :  DefaultTextStyle(
    style: const TextStyle(
    fontSize: 25.0,
    color: Color.fromARGB(255, 121, 37, 37),
    fontFamily: 'RobotoMono',
    ),
    child: AnimatedTextKit(
      totalRepeatCount: 200,
    animatedTexts: [
    TyperAnimatedText('Welcome to REDDIT :)'),
    ],
    ),
    ),
            ),
            Container(
              width: 220.0,
                height: 40.0,
                margin: EdgeInsets.only(top: 400 , left: 100),
                child : SignInButton(
                  Buttons.Google,
                  text: "Continue with Google",
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => googleSU()
                      ),
                    );
                  },
                ),
            ),
            Container(
              width: 220.0,
              height: 40.0,
              margin: EdgeInsets.only(top: 460 , left: 100),
              child : SignInButton(
                Buttons.Email,
                text: "Continue with Email",
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => emailSU()
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 220.0,
              height: 40.0,
              margin: EdgeInsets.only(top: 520 , left: 100),
              child : SignInButton(
                Buttons.Facebook,
                text: "Continue with FaceBook",
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => facebookSU(),
                    ),
                  );
                },
              ),
            ),
            Container( //this container should be removed later
              margin: EdgeInsets.only(top: 580 , left: 260),
              child : MaterialButton(
                child: CircleAvatar(
                   backgroundColor: Color.fromARGB(255, 79, 243, 225),
                   child: Icon(Icons.arrow_forward_ios,color:Colors.black),
              ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => NavPage()));
                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 600 , left: 100),
              child: Text('Already a redditor?' , style: TextStyle(color: Color.fromARGB(
                  255, 239, 217, 2), fontSize: 15.0) ),
            ),
            Container(
              margin: EdgeInsets.only(top: 585 , left: 205),
              child : FlatButton(
                child: Text(
                    'Login' , style: TextStyle(
                    color: Color.fromARGB(
                  255, 239, 217, 2),
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.5, 4.5),
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],

                    fontSize: 15.0),
                ),
                onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => Login()
                ),
                );
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}
