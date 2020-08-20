import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/clean/gradient_back.dart';

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
                title: Text("Write")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Color(0xFFEBCC07)),
              title: Text("Home")
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mic, color: Color(0xFFEBCC07)),
                title: Text("Record")
            ),
          ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => GradientBack(height: 30.0),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => GradientBack(height: 60.0),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return GradientBack(height: 80.0);
                },
              );
              break;
          }

        },
      ),
    );
  }
}