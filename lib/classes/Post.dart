import 'package:reddit2/classes/Forum.dart';
import 'package:reddit2/classes/User.dart';
import 'package:reddit2/classes/Comment.dart';

class Post {

  String postTitle ;
  String postDescription ;
  int postLikes = 0 ;
  Post(this.postTitle, this.postDescription, this.creationDate , postForum , this.commentsList , this.postCommentCount){
    postForum.forumPosts.add(this);
    this.postForum = postForum;
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
  List<Comment> commentsList = [];
  int postCommentCount ;
}
Post valorantPost = Post("Valorant", "This is a valorant post", DateTime(2022,1,5), valorant , [valoComment1,valoComment2,valoComment3] , 3);
Post onePiecePost = Post("One Piece", "This is a One Piece post", DateTime(2022,5,20), onePiece , [] , 0);
Post attackOnTitanPost = Post("Attack On Titan", "This is an AOT post", DateTime(2022,6,24), attackOnTitan, [], 0);

List<Post> postsList = [
  valorantPost,
  onePiecePost,
  attackOnTitanPost,
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
List<Comment> commentsBubbleSort(List<Comment> commentsList) {
  List<Comment> commentResult = commentsList;
  for (int i = 0; i < commentResult.length; i++) {
    for (int j = 0; j < commentResult.length - i - 1; j++) {
      if (commentResult[j].commentLikes <= (commentResult[j + 1].commentLikes)) {
        Comment temp = commentResult[j];
        commentResult[j] = commentResult[j + 1];
        commentResult[j + 1] = temp;
      }
    }
  }
  commentsList = commentResult;
  return commentsList;
}