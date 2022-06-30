import 'dart:ui';
import 'package:flutter/material.dart';
import '../classes/Post.dart';
import 'package:intl/intl.dart';

class CommentsPage extends StatefulWidget {
  Post pagePost ;
  CommentsPage(this.pagePost);

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    widget.pagePost.commentsList = commentsBubbleSort(widget.pagePost.commentsList);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: widget.pagePost.postCommentCount,
        itemBuilder: (context , index){
          return Card(
              color: Colors.grey[900],
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal :5 , vertical: 5),
                        child: CircleAvatar(backgroundImage:AssetImage('${widget.pagePost.commentsList[index].posterUser.userPicture}'), radius: 20)),
                    Text(
                      "u/${widget.pagePost.commentsList[index].posterUser.username}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    Text(
                      " · ",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 25
                      ),
                    ),
                    Text(
                      DateFormat('MMMMd').format(widget.pagePost.commentsList[index].commentDate),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
                  child: Text(
                    widget.pagePost.commentsList[index].commentText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        setState(() {
                          if(widget.pagePost.commentsList[index].commentIsLiked == false && widget.pagePost.commentsList[index].commentIsDisLiked == false){
                            widget.pagePost.commentsList[index].commentLikes++;
                            widget.pagePost.commentsList[index].commentIsLiked = true;
                          }else if(widget.pagePost.commentsList[index].commentIsLiked == false && widget.pagePost.commentsList[index].commentIsDisLiked == true){
                            widget.pagePost.commentsList[index].commentLikes += 2;
                            widget.pagePost.commentsList[index].commentIsDisLiked = false;
                            widget.pagePost.commentsList[index].commentIsLiked = true;
                          }else if(widget.pagePost.commentsList[index].commentIsLiked == true && widget.pagePost.commentsList[index].commentIsDisLiked == false){
                            widget.pagePost.commentsList[index].commentLikes--;
                            widget.pagePost.commentsList[index].commentIsLiked = false;
                          }
                        });
                      },
                      icon: Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.pagePost.commentsList[index].commentLikes.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: widget.pagePost.commentsList[index].isPositiveDetectComment() ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                          onPressed: (){
                            setState(() {
                              if(widget.pagePost.commentsList[index].commentIsLiked == false && widget.pagePost.commentsList[index].commentIsDisLiked == false){
                                widget.pagePost.commentsList[index].commentLikes--;
                                widget.pagePost.commentsList[index].commentIsDisLiked = true;
                              }else if(widget.pagePost.commentsList[index].commentIsLiked == false && widget.pagePost.commentsList[index].commentIsDisLiked == true){
                                widget.pagePost.commentsList[index].commentLikes++;
                                widget.pagePost.commentsList[index].commentIsDisLiked = false;
                              }else if(widget.pagePost.commentsList[index].commentIsLiked == true && widget.pagePost.commentsList[index].commentIsDisLiked == false){
                                widget.pagePost.commentsList[index].commentLikes -= 2;
                                widget.pagePost.commentsList[index].commentIsDisLiked = true;
                                widget.pagePost.commentsList[index].commentIsLiked = false;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.arrow_downward,
                            color: Color.fromRGBO(233, 75, 60, 1.0),
                            size: 30,
                          )
                      ),
                    ),
                  ],
                ),
              ]
              )
          );
        }
      ),
    );
  }
}

