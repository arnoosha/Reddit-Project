import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MediaQuery(data: MediaQueryData(), child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(children: [
            Container(margin: EdgeInsets.only(top: 300),
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
          centerTitle: true,
          toolbarHeight: 100,
          title: SizedBox(height: 60, child: Image.asset('assets/images/2.png'),),
          backgroundColor: Colors.orange,
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

      ),
    ));

  }
}