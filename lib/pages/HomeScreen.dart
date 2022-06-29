import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reddit2/classes/Post.dart';
import 'package:reddit2/pages/postInfo.dart';
import '../classes/User.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    mainUser.shownPosts = bubbleSort(mainUser.shownPosts);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
          itemCount: mainUser.shownPosts.length,
          itemBuilder: (context , index){
            return Card(
              color: Colors.grey[500],
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PostInfo(mainUser.shownPosts[index])));
                    },
                    title: Text(
                      mainUser.shownPosts[index].postTitle,
                      style: TextStyle(fontSize: 30 ,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900]
                      ),
                    ),
                    subtitle: Text(
                      mainUser.shownPosts[index].postDescription,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Column(
                    children: [
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
                                       if(mainUser.shownPosts[index].isLiked == false && mainUser.shownPosts[index].isDisliked == false){
                                         mainUser.shownPosts[index].postLikes++;
                                         mainUser.shownPosts[index].isLiked = true;
                                       }else if(mainUser.shownPosts[index].isLiked == false && mainUser.shownPosts[index].isDisliked == true){
                                         mainUser.shownPosts[index].postLikes += 2;
                                         mainUser.shownPosts[index].isDisliked = false;
                                         mainUser.shownPosts[index].isLiked = true;
                                       }else if(mainUser.shownPosts[index].isLiked == true && mainUser.shownPosts[index].isDisliked == false){
                                         mainUser.shownPosts[index].postLikes--;
                                         mainUser.shownPosts[index].isLiked = false;
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
                                       if(mainUser.shownPosts[index].isLiked == false && mainUser.shownPosts[index].isDisliked == false){
                                         mainUser.shownPosts[index].postLikes--;
                                         mainUser.shownPosts[index].isDisliked = true;
                                       }else if(mainUser.shownPosts[index].isLiked == false && mainUser.shownPosts[index].isDisliked == true){
                                         mainUser.shownPosts[index].postLikes++;
                                         mainUser.shownPosts[index].isDisliked = false;
                                       }else if(mainUser.shownPosts[index].isLiked == true && mainUser.shownPosts[index].isDisliked == false){
                                         mainUser.shownPosts[index].postLikes -= 2;
                                         mainUser.shownPosts[index].isDisliked = true;
                                         mainUser.shownPosts[index].isLiked = false;
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
                                 mainUser.shownPosts[index].postLikes.toString(),
                                 style: TextStyle(
                                   fontSize: 22,
                                   fontWeight: FontWeight.bold,
                                   color: mainUser.shownPosts[index].isPositiveDetect() ? Colors.red : Colors.green[800],
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
                                     if (mainUser.shownPosts[index].isSaved == false) {
                                       Babak.savedPosts.add(mainUser.shownPosts[index]);
                                       mainUser.shownPosts[index].isSaved = true;
                                     } else {
                                       for (int i = 0 ; i < Babak.savedPosts.length ; i++){
                                         if (identical(Babak.savedPosts[i], mainUser.shownPosts[index])){
                                           Babak.savedPosts.removeAt(i);
                                         }
                                       }
                                       mainUser.shownPosts[index].isSaved= false;
                                     }
                                   });
                                 },
                                 icon: Icon(mainUser.shownPosts[index].isSaved ? Icons.archive : Icons.archive_outlined , size: 30),
                                 color: Colors.grey[800],
                               ),
                             )
                           ],
                         ),
                       ],
                      ),
                      Row (
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 7 , horizontal: 13),
                            child: Text(
                                DateFormat('MMMMd').format(mainUser.shownPosts[index].creationDate),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey[900]
                                  )
                                ),
                          ),
                        ],
                      )
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
