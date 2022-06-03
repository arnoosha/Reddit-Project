import 'package:reddit2/classes/Post.dart';
import 'Forum.dart';

class User {

  List<Post> savedPosts = [];
  List<Forum> followedForums = [];
  String username ;
  String password ;
  String bio;
  int followers = 0;
  int followings = 0 ;

  User(this.username, this.password);
}

User Babak = User("Babak", "2663");