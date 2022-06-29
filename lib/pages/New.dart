import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reddit2/classes/Forum.dart';
import 'package:reddit2/classes/Post.dart';
import 'package:reddit2/pages/HomeScreen.dart';

import '../classes/User.dart';

class New extends StatefulWidget {

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  String postTitle;
  String postDesc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Color.fromRGBO(239, 233, 233, 1.0),
              ),
              onPressed: (){
                if (postTitle != null && postDesc != null){
                  postsList.add(Post(postTitle , postDesc , DateTime.now() , valorant));
                  mainUser.shownPosts.add(Post(postTitle , postDesc , DateTime.now() , valorant));
                  Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => HomeScreen()));
                }
              },
            )
          ],
        ),
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Post Title',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontSize: 26,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container (
                        margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          style: TextStyle(
                            color: Color.fromRGBO(226, 217, 217, 1.0),
                            fontSize: 22,
                          ),
                          onChanged: (String inputTitle){
                            postTitle = inputTitle;
                          },
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Post Description',
                          style: TextStyle(
                              color: Color.fromRGBO(236, 222, 222, 1.0),
                              fontSize: 26,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container (
                        margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextField(
                          textAlign: TextAlign.left,
                          textAlignVertical: TextAlignVertical.top,
                          style: TextStyle(
                            color: Color.fromRGBO(226, 217, 217, 1.0),
                            fontSize: 22,
                          ),
                          onChanged: (String inputDescription){
                            postDesc = inputDescription;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
