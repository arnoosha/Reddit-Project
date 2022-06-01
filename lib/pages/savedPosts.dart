import 'package:flutter/material.dart';

import '../classes/Post.dart';
import '../classes/User.dart';

class savedPosts extends StatefulWidget {

  @override
  State<savedPosts> createState() => _savedPostsState();
}

class _savedPostsState extends State<savedPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
          itemCount: Babak.savedPosts.length,
          itemBuilder: (context , index){
            return Card(
              color: Colors.grey[500],
              child: Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text(
                      Babak.savedPosts[index].postTitle,
                      style: TextStyle(fontSize: 30 ,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900]
                      ),
                    ),
                    subtitle: Text(
                      Babak.savedPosts[index].postDescription,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 30,
                            child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(Babak.savedPosts[index].isliked == false && Babak.savedPosts[index].isdisliked == false){
                                      Babak.savedPosts[index].postLikes++;
                                      Babak.savedPosts[index].isliked = true;
                                    }else if(Babak.savedPosts[index].isliked == false && Babak.savedPosts[index].isdisliked == true){
                                      Babak.savedPosts[index].postLikes += 2;
                                      Babak.savedPosts[index].isdisliked = false;
                                      Babak.savedPosts[index].isliked = true;
                                    }else if(Babak.savedPosts[index].isliked == true && Babak.savedPosts[index].isdisliked == false){
                                      Babak.savedPosts[index].postLikes--;
                                      Babak.savedPosts[index].isliked = false;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green[800],
                                  size: 30,
                                )
                            ),
                          ),
                          Container(
                            height: 50,
                            child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(Babak.savedPosts[index].isliked == false && Babak.savedPosts[index].isdisliked == false){
                                      Babak.savedPosts[index].postLikes--;
                                      Babak.savedPosts[index].isdisliked = true;
                                    }else if(Babak.savedPosts[index].isliked == false && Babak.savedPosts[index].isdisliked == true){
                                      Babak.savedPosts[index].postLikes++;
                                      Babak.savedPosts[index].isdisliked = false;
                                    }else if(Babak.savedPosts[index].isliked == true && Babak.savedPosts[index].isdisliked == false){
                                      Babak.savedPosts[index].postLikes -= 2;
                                      Babak.savedPosts[index].isdisliked = true;
                                      Babak.savedPosts[index].isliked = false;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.arrow_downward,
                                  color: Color.fromRGBO(233, 75, 60, 1.0),
                                  size: 30,
                                )
                            ),
                          ),
                          Container(
                            child: Text(
                              Babak.savedPosts[index].postLikes.toString(),
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Babak.savedPosts[index].isPositiveDetect() ? Colors.red : Colors.green[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.mode_comment_outlined,
                                size: 30,
                              ),
                              color: Colors.grey[800],
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  for (int i = 0 ; i < postsList.length ; i++){
                                    if (identical(Babak.savedPosts[index], postsList[i])){
                                      postsList[i].isSaved = false;
                                    }
                                  }
                                  Babak.savedPosts.removeAt(index);
                                });
                              },
                              icon: Icon(Babak.savedPosts[index].isSaved ? Icons.archive : Icons.archive_outlined , size: 30),
                              color: Colors.grey[800],
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
