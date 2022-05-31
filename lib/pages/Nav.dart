import 'package:flutter/material.dart';
import 'package:reddit2/pages/Forums.dart';
import 'package:reddit2/pages/HomeScreen.dart';
import 'package:reddit2/pages/New.dart';
import 'package:reddit2/pages/Notifications.dart';
import 'package:reddit2/pages/Settings.dart';

class NavPage extends StatefulWidget {

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0 ;
  List<Widget> _pages = [
    HomeScreen(),
    Forums(),
    New(),
    Notifications(),
    Settings()
  ];
  void _onItemTap (int index){
    setState(() {
      _selectedIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 7, 7, 7),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/reddit.png'),
          width: 45,
          height: 45,
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.account_circle,
              size: 40,
            ),
          )
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home,),
              backgroundColor: Color.fromRGBO(12, 12, 12, 1.0)
          ),
          BottomNavigationBarItem(
            label: 'Forums',
            icon: Icon(Icons.forum,),
              backgroundColor: Color.fromRGBO(19, 19, 19, 1.0)
          ),
          BottomNavigationBarItem(
              label: 'New',
              icon: Icon(Icons.add),
              backgroundColor: Color.fromRGBO(28, 28, 28, 1.0)
          ),
          BottomNavigationBarItem(
              label: 'Notifications',
              icon: Icon(Icons.notifications),
              backgroundColor: Color.fromRGBO(35, 34, 34, 1.0)
          ),
          BottomNavigationBarItem(
              label: 'Settigns',
              icon: Icon(Icons.settings),
              backgroundColor: Color.fromRGBO(43, 43, 43, 1.0)
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
