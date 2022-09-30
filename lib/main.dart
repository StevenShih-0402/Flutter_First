import 'package:flutter/material.dart';
void main(){
  var apptitle = Text('我的第一個Flutter app'),
      hiFlutter = Text(
        'Hi, Flutter.',
        style: TextStyle(fontSize: 50),
      );

  var appBody = Center(
    child: hiFlutter,
  );

  var appBar = AppBar(
    title: apptitle,
  );

  var app = MaterialApp(
    home: Scaffold(
      appBar: appBar,
      body: appBody,
    ),
  );

  runApp(app);
}
