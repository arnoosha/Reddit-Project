import 'package:reddit2/classes/Post.dart';

class Forum {
  Forum({this.forumName , this.forumPicture});
  String forumName ;
  int forumFollowers = 0 ;
  String forumPicture ;
  List<Post> forumPosts = [];
}