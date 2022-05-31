import 'package:flutter/material.dart';
import 'package:reddit2/classes/Forum.dart';

class Forums extends StatefulWidget {
  @override
  State<Forums> createState() => _ForumsState();
}

class _ForumsState extends State<Forums> {

  List forums = [
    Forum(forumName: 'One Piece' , forumPicture: 'assets/images/One_piece.png'),
    Forum(forumName: 'Attack On Titan', forumPicture: 'assets/images/Aot.png'),
    Forum(forumName: 'Valorant' , forumPicture: 'assets/images/Valorant.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: forums.length,
        itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1 , horizontal: 0.5),
            child: Card(
              color: Colors.grey[500],
              child: ListTile(
                onTap: (){},
                title: Text(forums[index].forumName),
                leading: CircleAvatar(backgroundImage: AssetImage('${forums[index].forumPicture}'),),

              ),
            ),
          );
        },
      ),
    );


  }
}
