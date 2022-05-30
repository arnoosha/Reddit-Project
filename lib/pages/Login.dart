import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reddit2/pages/signUp.dart';
import 'package:reddit2/welcomepage.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top : 40.0 , left: 350.0),
                  child : InkWell(onTap : ()=>{
                  Navigator.push(context,
                  MaterialPageRoute(
                  builder: (context) => welcomePage()),
                  ),
                  },
                    child: Text('Exit' , style:  TextStyle(fontSize: 20.0 , color: Color.fromARGB(
                        255, 255, 255, 255),shadows: <Shadow>[
                    Shadow(
                        offset: Offset(2.5, 2.5),
                        blurRadius: 5.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        ),], ), ),
                  ),
                ),
                Container( margin: EdgeInsets.only(top: 150 ), child: Image.asset('assets/images/4.png' , scale: 6.0,),),
                Container (
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 21, 177, 95)),
                      borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.only(top : 100.0 , left: 15.0),
                  width: 200.0,
                 height: 40.0,
                 child: TextField(
                   textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(/* color :Color.fromARGB(
                          0, 219, 116, 4)*/ width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                     ),
                    hintText: 'Username',
                   ),
                 ),
               ),
                Container (
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(
                          255, 21, 177, 95) ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.only(top : 20.0 , left: 15.0),
                  width: 200.0,
                  height: 40.0,
                  child: TextField(
                    obscureText: isHidden,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: ()=>setState((){
                          isHidden =!isHidden;
                        },
                        ),
                      child: Icon(Icons.visibility,color: Colors.limeAccent,),),
                      border :
                        OutlineInputBorder(
                          borderSide: BorderSide( /*color :Color.fromARGB(255, 219, 116, 4) , */width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      hintText: 'Password'
                    ),
                  ),
                )
                ,
                Container(
                  margin: EdgeInsets.fromLTRB( 160,size.height*0.02,0,0),
                  child: MaterialButton(

                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Icon(Icons.arrow_forward_ios,color:Colors.white),

                    ),
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => welcomePage()));

                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
