import 'dart:ui';

import 'package:flutter/material.dart';
import '../classes/Forum.dart';

class Forums extends StatefulWidget {
  @override
  State<Forums> createState() => _ForumsState();
}

class _ForumsState extends State<Forums> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: allForumsList.length,
        itemBuilder: (context , index){
          return Card(
            color: Colors.grey[500],
            child: ListTile(
              onTap: (){},
              title: Text(allForumsList[index].forumName , style: TextStyle(fontSize: 20),),
              leading: CircleAvatar(backgroundImage: AssetImage('${allForumsList[index].forumPicture}'),radius: 24,),
            ),
          );
        },
      ),
    );


  }
}
