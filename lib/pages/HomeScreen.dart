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
     postsList = bubbleSort(postsList);
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
          itemCount: postsList.length,
          itemBuilder: (context , index){
            return Card(
              color: Colors.grey[500],
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => PostInfo(postsList[index])));
                    },
                    title: Text(
                      postsList[index].postTitle,
                      style: TextStyle(fontSize: 30 ,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900]
                      ),
                    ),
                    subtitle: Text(
                      postsList[index].postDescription,
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
                                       if(postsList[index].isliked == false && postsList[index].isdisliked == false){
                                         postsList[index].postLikes++;
                                         postsList[index].isliked = true;
                                       }else if(postsList[index].isliked == false && postsList[index].isdisliked == true){
                                         postsList[index].postLikes += 2;
                                         postsList[index].isdisliked = false;
                                         postsList[index].isliked = true;
                                       }else if(postsList[index].isliked == true && postsList[index].isdisliked == false){
                                         postsList[index].postLikes--;
                                         postsList[index].isliked = false;
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
                                       if(postsList[index].isliked == false && postsList[index].isdisliked == false){
                                         postsList[index].postLikes--;
                                         postsList[index].isdisliked = true;
                                       }else if(postsList[index].isliked == false && postsList[index].isdisliked == true){
                                         postsList[index].postLikes++;
                                         postsList[index].isdisliked = false;
                                       }else if(postsList[index].isliked == true && postsList[index].isdisliked == false){
                                         postsList[index].postLikes -= 2;
                                         postsList[index].isdisliked = true;
                                         postsList[index].isliked = false;
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
                                 postsList[index].postLikes.toString(),
                                 style: TextStyle(
                                   fontSize: 22,
                                   fontWeight: FontWeight.bold,
                                   color: postsList[index].isPositiveDetect() ? Colors.red : Colors.green[800],
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
                                     if (postsList[index].isSaved == false) {
                                       Babak.savedPosts.add(postsList[index]);
                                       postsList[index].isSaved = true;
                                     } else {
                                       for (int i = 0 ; i < Babak.savedPosts.length ; i++){
                                         if (identical(Babak.savedPosts[i], postsList[index])){
                                           Babak.savedPosts.removeAt(i);
                                         }
                                       }
                                       postsList[index].isSaved= false;
                                     }
                                   });
                                 },
                                 icon: Icon(postsList[index].isSaved ? Icons.archive : Icons.archive_outlined , size: 30),
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
                                DateFormat('MMMMd').format(postsList[index].creationDate),
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
