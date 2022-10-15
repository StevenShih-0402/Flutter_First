import 'package:flutter/material.dart';
void main(){

  var apptitle = Text('Layout_Widgets');

  // var appBody = Column(
  //   children: const <Widget>[
  //     Expanded(
  //         child: Text('First Text', textAlign: TextAlign.center,)
  //     ),
  //     Expanded(
  //         child: Text('Second Text', textAlign: TextAlign.center,)
  //     ),
  //     Expanded(
  //         child: FittedBox(
  //           fit: BoxFit.contain,
  //           child: FlutterLogo(),
  //         ),
  //     ),
  //   ],
  // );

  var appBody = GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        child: Column(
          children: [
            const Text('哈哈'),
            Image.network("https://imgur.com/RaYqx2Q.jpg"),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[200],
        child: Column(
          children: [
            const Text('油條和五花'),
            Image.network("https://imgur.com/38o8diR.jpg"),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: Column(
          children: [
            const Text('騙人的吧'),
            Image.network("https://imgur.com/kyIOhQo.jpg"),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[400],
        child: Column(
          children: [
            const Text('請不要再這樣到處丟人現眼了'),
            Image.network("https://imgur.com/0XqqRyH.jpg"),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: Column(
          children: [
            const Text('難道只有我覺得'),
            Image.network("https://imgur.com/HUEHlY0.jpg"),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[600],
        child: Column(
          children: [
            const Text('寓教於樂'),
            Image.network("https://imgur.com/3rULbGK.jpg"),
          ],
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