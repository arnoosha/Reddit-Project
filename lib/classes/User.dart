import 'package:flutter/cupertino.dart';
import 'package:reddit2/classes/Post.dart';
import 'Forum.dart';

class User {
  List<Post> shownPosts= [];
  List<Forum> followedForums = [valorant , onePiece , attackOnTitan];
  String username ;
  String password ;
  String bio;
  String userPicture ;
  int followers = 0;
  int followings = 0 ;
  User(this.username, this.password , this.userPicture);
  List<Post> savedPosts = [];
}

User Babak = User("Babak", "2663" ,"assets/images/6.png");
User Ari = User("Arnoosha", "123456" , "assets/images/5.png");
User mainUser = Babak ;