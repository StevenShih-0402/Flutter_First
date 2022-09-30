import 'package:flutter/material.dart';
void main(){

  var apptitle = Text('我的第一個Flutter app'),
      // ignore: prefer_const_constructors
      hiFlutter = Text(
        'Hi, Flutter.\n今天是20220926',
        style: TextStyle(
            fontSize: 30,
            color: Color(0xFF263238),
            decoration: TextDecoration.underline,
        ),
      );

  var img = Image.network("https://imgur.com/kyIOhQo.jpg");
  var appBody = Center(
    child: img,
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
