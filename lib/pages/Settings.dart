import 'package:flutter/material.dart';

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
                      onTap: (){},
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: Icon(Icons.logout , color: Colors.red,),
                  ),
                  IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: Icon(Icons.wb_sunny , color: Colors.yellow,),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
