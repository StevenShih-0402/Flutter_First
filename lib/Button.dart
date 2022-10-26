import 'package:flutter/material.dart';

void main(){

  var apptitle = Text('Button');

  var flatbtn0 = TextButton(
    style: TextButton.styleFrom(
      primary: Colors.black,
      onSurface: Colors.black12,
    ),
    onPressed: null,
    child: Text('TextButton'),
  );

  var flatbtn1 = TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              return Colors.black.withOpacity(0.40);
            if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed))
              return Colors.black.withOpacity(0.72);
            return null; // Defer to the widget's default.
          },
        ),
      ),
      onPressed: () { },
      child: Text('TextButton'),
    );

  var flatbtn2 = ElevatedButton(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
    onPressed: () { },
    child: Text('TextButton'),
  );




  var appBody = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        child: flatbtn0,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(20),
      ),
      Container(
        child: flatbtn1,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(20),
      ),
      Container(
        width: 100,
        height: 30,
        child: flatbtn2,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.pink, Colors.green]),
        ),
      ),
    ],
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
