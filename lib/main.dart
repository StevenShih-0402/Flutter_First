import 'package:flutter/material.dart';
void main(){

  var apptitle = Text('我的第一個Flutter app'),
      // ignore: prefer_const_constructors
      hiFlutter = Text('Hi, Flutter.\n今天是20220926',
        style: TextStyle(
            fontSize: 30,
            color: Color(0xFF263238),
            decoration: TextDecoration.underline,
        ),
      );

  var img = Image.network("https://imgur.com/kyIOhQo.jpg");
  var box = Container(
    margin: const EdgeInsets.all(10.0),
    color: Color(0xFF1DE9B6),
    width: 300,
    height: 600,
    child: Align(
      alignment: Alignment.topRight,
      child: hiFlutter,
    ),
  );


  var appBody = Container(
    child: hiFlutter,
    alignment: Alignment.topCenter,
    margin: EdgeInsets.all(80),
    color: Color(0xFF1DE9B6),
    // padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
  );

  var appBar = AppBar(
    title: apptitle,
    backgroundColor: Color(0xFF006064),
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
      backgroundColor: Colors.lightBlueAccent,
    ),
  );

  runApp(app);
}
