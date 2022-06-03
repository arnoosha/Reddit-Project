import 'package:reddit2/classes/User.dart';

import 'Forum.dart';

class Post {

  String postTitle ;
  String postDescription ;
  int postLikes = 0 ;
  Post({this.postTitle, this.postDescription , this.postLikes , this.creationDate , this.postForum});
  bool isPositiveDetect(){
    if (postLikes < 0) {return true;}
    else {return  false;}
  }
  bool isliked = false;
  bool isdisliked = false;
  bool isSaved = false ;
  DateTime creationDate ;
  Forum postForum;
  User postUser = Babak;
  int postCommentCount = 0;
}

List<Post> postsList = [
  Post(postTitle: "My Last Valorant Match" , postDescription: "pashmam" ,
      postLikes: 0, creationDate: DateTime(2022, 5 , 20) , postForum: valorant),
  Post(postTitle: "My 2 last Valorant Match" , postDescription: "I won 13-4" ,
      postLikes: 0 ,creationDate: DateTime(2022, 5 , 28) , postForum: valorant),
  Post(postTitle: "My 3 last Valorant Match" , postDescription: "I won 13-0" ,
      postLikes: 0 , creationDate: DateTime(2022, 5 , 26) , postForum: valorant),
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