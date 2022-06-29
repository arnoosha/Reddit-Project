import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reddit2/classes/User.dart';
class profile extends StatefulWidget {

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  //margin: EdgeInsets.only(top: 0),
                  height: 420,
                 width:MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/7.png' ),
                  ),
                ),
                ),
                Image(image: AssetImage('${mainUser.userPicture}'),height: 340.0,),
                Container(
                  margin: EdgeInsets.only(top: 250.0 , left: 30.0),
                    child : Text('u/${mainUser.username}' , style: TextStyle(
                  fontFamily: 'Eater',
                      color: Color.fromARGB(255, 159, 231, 163),
                  fontSize: 30.0,
                ),)
                ),
                Container(
                  margin: EdgeInsets.only(top: 260.0 , left: 320.0),
                  child: TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color:Color.fromARGB(
                                    255, 245, 241, 241)
                                )
                            )
                        )
                    ),
                    child: Text('Edit' , style: TextStyle(fontSize: 20.0 , color: Color.fromARGB(
                        255, 245, 241, 241))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 300.0 , left: 30.0),
                  child: Text(
                    '${mainUser.followers} followers',
                    style: TextStyle(
                      color: Color.fromARGB(255, 159, 231, 163),
                      fontFamily: 'Lobster',
                      fontSize: 20.0
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  child : DefaultTabController(
                    length:3,
                      child :TabBar(
                tabs: <Tab>[
                   Tab(text: 'Posts'),
                  Tab(text: 'Comments' ),
                   Tab(text: 'About'),
                ]
            )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0 , left: 130.0),
                  child: Text('No Posts Yet' , style: TextStyle(color: Color.fromARGB(
                      255, 0, 0, 0),
                    fontSize: 20.0,
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0 , left: 250.0),
                  child: Icon(Icons.face_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




