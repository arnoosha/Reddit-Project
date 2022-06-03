import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reddit2/classes/Post.dart';
import 'package:intl/intl.dart';

class PostInfo extends StatefulWidget {
  PostInfo(this.pagePost);
  Post pagePost ;
  @override
  State<PostInfo> createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      body: Card(
        color: Colors.grey[900],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  tileColor: Colors.grey[800],
                  leading: CircleAvatar(backgroundImage:AssetImage('${widget.pagePost.postForum.forumPicture}'), radius: 24,),
                  title: Text(
                    'r/' + widget.pagePost.postForum.forumName ,
                    style: TextStyle(
                        color:Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                  subtitle: Text(
                    'u/' + widget.pagePost.postUser.username,
                    style: TextStyle(
                        color:Colors.white,
                        letterSpacing: 1,
                        fontSize: 16
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    widget.pagePost.postTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle: Text(
                    widget.pagePost.postDescription,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text(
                          DateFormat('MMMMd').format(widget.pagePost.creationDate),
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                          )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 30,
                          child: Icon(
                                Icons.arrow_upward,
                                color: Colors.green[800],
                                size: 34,
                              )
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            widget.pagePost.postLikes.toString(),
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: widget.pagePost.isPositiveDetect() ? Colors.red : Colors.green[800],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: Icon(
                                Icons.arrow_downward,
                                color: Color.fromRGBO(233, 75, 60, 1.0),
                                size: 34,
                          ),
                        ),
                      ],
                    ),
                  Row(
                    children: [
                      Container(
                        height: 60,
                        child: Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          widget.pagePost.postCommentCount.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

