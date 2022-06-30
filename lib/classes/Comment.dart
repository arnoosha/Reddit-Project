import 'package:reddit2/classes/Post.dart';
import 'package:reddit2/classes/User.dart';

class Comment {
  bool isPositiveDetectComment(){
    if (commentLikes < 0) {return false;}
    else {return  true;}
  }
  String commentText ;
  DateTime commentDate ;
  User posterUser ;
  int commentLikes = 0 ;
  bool commentIsLiked = false ;
  bool commentIsDisLiked = false;
  Comment(this.commentText, this.commentDate, this.posterUser  , this.commentLikes);
}
Comment valoComment1 = Comment("First Comment", DateTime(2022,5,10), Babak,  4);
Comment valoComment2 = Comment("Most Liked Comment", DateTime(2022,5,15), Babak,  23);
Comment valoComment3 = Comment("Third Comment", DateTime(2022,5,12), Ari, 15);