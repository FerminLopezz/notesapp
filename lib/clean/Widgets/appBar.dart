import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/clean/Screens/home_screen.dart';
import 'package:notes/clean/Screens/record_screen.dart';
import 'package:notes/clean/Screens/write_screen.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TDO: implement build
    return Scaffold(
      backgroundColor: Color(0xF9F2C8),
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color(0xFF080B19),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.keyboard, color: Color(0xFFEBCC07)),
                title: Text("Write", style: TextStyle(color: Color(0xFFEBCC07)))
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xFFEBCC07)),
              title: Text("Home", style: TextStyle(color: Color(0xFFEBCC07)))
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mic, color: Color(0xFFEBCC07)),
                title: Text("Record", style: TextStyle(color: Color(0xFFEBCC07)))
            ),
          ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => TextScreen(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeScreen(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => RecordScreen()
              );
              break;
          }
        },
      ),
    );
  }
}