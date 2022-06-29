import 'package:reddit2/classes/Forum.dart';
import 'package:reddit2/classes/User.dart';

class Post {

  String postTitle ;
  String postDescription ;
  int postLikes = 0 ;
  Post(this.postTitle, this.postDescription, this.creationDate , postForum){
    postForum.forumPosts.add(this);
  }
  
  bool isPositiveDetect(){
    if (postLikes < 0) {return true;}
    else {return  false;}
  }
  bool isLiked = false;
  bool isDisliked = false;
  bool isSaved = false ;
  DateTime creationDate ;
  Forum postForum;
  User postUser = Babak;
  int postCommentCount = 0;
}

List<Post> postsList = [
  Post("Valorant", "This is a valorant post", DateTime(2022,1,5), valorant),
  Post("One Piece", "This is a One Piece post", DateTime(2022,5,20), onePiece),
  Post("Attack On Titan", "This is an AOT post", DateTime(2022,6,24), attackOnTitan)
];

List<Post> bubbleSort(List<Post> postsList) {
  List<Post> result = postsList;
  for (int i = 0; i < result.length; i++) {
    for (int j = 0; j < result.length - i - 1; j++) {
      if (result[j].creationDate.isBefore(result[j + 1].creationDate)) {
        Post temp = result[j];
        result[j] = result[j + 1];
        result[j + 1] = temp;
      }
    }
  }
  postsList = result;
  return postsList;
}