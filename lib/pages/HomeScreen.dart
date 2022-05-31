


import 'package:flutter/material.dart';
import 'package:reddit2/classes/Post.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Post> posts = [
    Post(postTitle: "My last Valorant Match" , postDescription: "pashmam" , postLikes: 0),
    Post(postTitle: "My 2 last Valorant Match" , postDescription: "I won 13-4" , postLikes: 0),
    Post(postTitle: "My 3 last Valorant Match" , postDescription: "I won 13-0" , postLikes: 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context , index){
            return Card(
              color: Colors.grey[500],
              child: Column(
                children: [
                  ListTile(
                    onTap: (){},
                    title: Text(
                      posts[index].postTitle,
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text(
                      posts[index].postDescription,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                   children: [
                     Container(
                       height: 50,
                       width: 20,
                       child: IconButton(
                           onPressed: (){
                             setState(() {
                               posts[index].postLikes++ ;
                             });
                           },
                           icon: Icon(
                               Icons.arrow_upward,
                             color: Colors.green[800],
                           )
                       ),
                     ),
                     Container(
                       height: 50,
                       child: IconButton(
                           onPressed: (){
                             setState(() {
                               posts[index].postLikes-- ;
                             });
                           },
                           icon: Icon(
                               Icons.arrow_downward,
                             color: Color.fromRGBO(233, 75, 60, 1.0),

                           )
                       ),
                     ),
                     Container(
                       child: Text(
                         posts[index].postLikes.toString(),
                         style: TextStyle(
                           fontSize: 20,
                           color: posts[index].isPositiveDetect() ? Colors.red : Colors.green[800],
                         ),
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 270),
                       child: IconButton(
                         onPressed: (){},
                         icon: Icon(Icons.mode_comment_outlined),
                         color: Colors.grey[800],
                       ),
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
