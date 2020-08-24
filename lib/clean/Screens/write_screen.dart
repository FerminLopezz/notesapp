import 'dart:io';

import 'package:flutter/material.dart';
import 'package:notes/Old_widgets/text_input.dart';
import 'package:notes/clean/Widgets/gradient_back.dart';



class TextScreen extends StatefulWidget {

  File image;

  TextScreen({Key key, this.image});

  @override
  State createState() {
     
    return _TextScreen();
  }

}

class _TextScreen extends State<TextScreen> {
  
  File image;

  @override
  Widget build(BuildContext context) {
    final _controllerTitle = TextEditingController();
    final _controllerDescription = TextEditingController();
    
    return Scaffold(
      body: Stack(
        children: <Widget> [
          GradientBack(height: 300.0,),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 5.0),
                child: SizedBox(
                  width: 45.0,
                  height: 45.0,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left, color: Color(0xFF5B5113), size: 45,), 
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                )
              ),
              Flexible(
                child: Container(
                  child: Container(
                    padding: EdgeInsets.only(top:45.0, left: 20.0, right: 10.0),
                    child: Text(
                      "New Note",
                      style: TextStyle(
                        color: Color(0xFF5B5113),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                )
              )
            ]
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Mic.jpg'),
                fit: BoxFit.cover
              )
            ),
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: <Widget>[
                Container(//Text Field title
                  margin: EdgeInsets.only(bottom: 20.0, top: 20.0),
                  child: TextInput(
                    hintText: "Title", 
                    inputType: null, 
                    controller: _controllerTitle
                  )
                ),
                TextInput(//Description
                  hintText: "Description", 
                  inputType: TextInputType.multiline, 
                  maxLines: 10,
                  controller: _controllerDescription
                ),
              ]
              )
            )
          ])
      );
  }
}