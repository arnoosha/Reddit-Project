class Post {

  String postTitle ;
  String postDescription ;
  int postLikes = 0 ;
  Post({this.postTitle, this.postDescription , this.postLikes});
  bool isPositiveDetect(){
    if (postLikes < 0) {return true;}
    else {return  false;}
  }
  bool isliked = false;
  bool isdisliked = false;
}

List<Post> postsList = [
  Post(postTitle: "My last Valorant Match" , postDescription: "pashmam" , postLikes: 0),
  Post(postTitle: "My 2 last Valorant Match" , postDescription: "I won 13-4" , postLikes: 0),
  Post(postTitle: "My 3 last Valorant Match" , postDescription: "I won 13-0" , postLikes: 0),
];