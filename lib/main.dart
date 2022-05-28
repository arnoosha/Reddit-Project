
import 'package:flutter/material.dart';
import 'package:reddit2/Login.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));

}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Center(
          child: Column(children: [
            Container(margin: EdgeInsets.only(top: 300),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 18.0 , horizontal: 66.0),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=> Login()),
                );

              },
              child: Text('Login' , style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0)),
              shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(16.0), side: BorderSide(color: Colors.amber) ),
            ),),
            Container(margin: EdgeInsets.only(top: 20),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18.0 , horizontal: 60.0),
                onPressed: () => Scaffold(),
                child: Text('Sign Up' , style: TextStyle(fontStyle: FontStyle.italic , fontSize: 18.0)),
                //shape: RoundedRectangleBorder(side: BorderSide(color: Colors.amber)),
                shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(16.0), side: BorderSide(color: Colors.amber) ),
              ),),

          ],),
        ),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: SizedBox(height: 60, child: Image.asset('assets/images/2.png'),),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.black,
          elevation: 20,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(70), bottomLeft: Radius.circular(70))),
          actions: [
            Row(children: [Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
            )],
            )
          ],
        ),


    );
  }
}