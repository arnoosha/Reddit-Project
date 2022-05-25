import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(children: [
            Container(margin: EdgeInsets.only(top: 450),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 18.0 , horizontal: 60.0),
              onPressed: () => Scaffold(),
              child: Text('Login'),
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blueAccent)),
            ),),
            Container(margin: EdgeInsets.only(top: 20),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 18.0 , horizontal: 60.0),
                onPressed: () => Scaffold(),
                child: Text('Sign Up'),
                shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blueAccent)),
              ),),
          ],),
        ),
        appBar: AppBar(
          title: Text('reddit'),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}