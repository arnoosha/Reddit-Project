import 'package:reddit2/classes/Post.dart';

class Forum {
  Forum({this.forumName , this.forumPicture});
  String forumName ;
  int forumFollowers = 0 ;
  String forumPicture ;
  List<Post> forumPosts = [];
}

Forum attackOnTitan = Forum(forumName: 'Attack On Titan', forumPicture: 'assets/images/Aot.png');
Forum onePiece = Forum(forumName: 'One Piece', forumPicture: 'assets/images/One_piece.png');
Forum valorant = Forum(forumName: 'Valorant' , forumPicture: 'assets/images/Valorant.png');

List allForumsList = [
  attackOnTitan,
  onePiece,
  valorant,
];