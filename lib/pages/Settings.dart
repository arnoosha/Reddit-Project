import 'package:flutter/material.dart';
import 'package:fswitch_nullsafety/fswitch_nullsafety.dart';

import 'savedPosts.dart';

class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[900],
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context , index) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Card(
                    color: Colors.grey[500],
                    child: ListTile(
                      onTap: (){},
                      title: Text('Account'),
                    ),
                  ),
                  Card(
                    color: Colors.grey[500],
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => savedPosts()),
                        );
                      },
                      title: Text('Saved'),
                    ),
                  ),
                  Card(
                    color: Colors.grey[500],
                    child: ListTile(
                      onTap: (){},
                      title: Text('New Forum'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4,5,0,0),
                        child: FSwitch(
                          open: true,
                          width: 400,
                          height: 45,
                          onChanged: (bool value) {},
                          openColor: Colors.blueGrey[700],
                          color: Colors.yellow,
                          openChild: Text("🌘" , style: TextStyle(fontSize: 35),),
                          closeChild: Text("🌖", style: TextStyle(fontSize: 35)),
                          // sliderChild: Text(
                          //   "🌘",
                          //   style: TextStyle(fontSize: 20),
                          // ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(
              //       onPressed: (){},
              //       iconSize: 30,
              //       icon: Icon(Icons.logout , color: Colors.red,),
              //     ),
              //     IconButton(
              //       onPressed: (){},
              //       iconSize: 30,
              //       icon: Icon(Icons.wb_sunny , color: Colors.yellow,),
              //     ),
              //   ],
              // ),
            ],
          );
        },
      ),
    );
  }
}
