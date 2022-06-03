import 'package:flutter/material.dart';

class New extends StatefulWidget {

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 480, 10, 0),
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey[700],
                      onPressed: (
                          ){},
                      child: Icon(Icons.add, color: Colors.grey[400],size: 35),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
