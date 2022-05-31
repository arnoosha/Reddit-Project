class Post {

  String postTitle ;
  String postDescription ;
  int postLikes = 0 ;
  Post({this.postTitle, this.postDescription , this.postLikes});
  bool isPositiveDetect(){
    if (postLikes < 0) {return true;}
    else {return  false;}
  }
}