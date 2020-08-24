import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TDO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Mic.jpg'),
            fit: BoxFit.cover
          )
        ),
        alignment: Alignment.center,
        child: FloatingActionButton(
          onPressed: null,
          backgroundColor: Color(0xFFEBCC07),
          child: Icon(Icons.mic, color: Colors.teal,)
        ),
      )
    );
  }
}