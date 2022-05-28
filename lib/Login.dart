import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(top : 20.0 , right: 10.0),
                child : InkWell(onTap : ()=>{},
                  child: Text('Skip' , style: TextStyle(fontSize: 16.0 , color: Color.fromARGB(
                      255, 205, 16, 73)), ),
                ),
              )
            ],
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          shadowColor: Color.fromARGB(0, 255, 255, 255),
        ),
        body: Center(
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(top: 150),),

              Image.asset('assets/images/4.png' , scale: 6.0,),
            ],
          )
        ),
      ),
    );
  }


}