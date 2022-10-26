import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Button'),
            backgroundColor: Color(0xFF006064),
          ),
          body: HomePage(),
          backgroundColor: Colors.lightBlueAccent,
        ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var flatbtn0 = ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo[900], // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: () {
        var snackBar = SnackBar(content: Text('呼呼呼呵呵呵嘿嘿嘿嘻嘻嘻'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Text('Raised Button'),
    );

    var flatbtn1 = TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.cyan[900],
      ),
      onPressed: () { },
      child: Text('Flat Button'),
    );

    var flatbtn2 = OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(
          width: 2,
          color: Colors.purple,
        ),
        primary: Colors.black,
      ),
      onPressed: () {
        _showSnackBar(context, 'AAAAAAA');
      },
      child: Text('Outline Button'),
    );

    var flatbtn3 = Column(
      children: [
        IconButton(
          icon: Icon(Icons.phone_android),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );

    var flatbtn4 = FloatingActionButton(
      child: Icon(Icons.access_alarms_rounded),
      backgroundColor: Colors.amber,
      onPressed: (){},
    );

    var flatbtn5 = ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo[900], // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: () { },
      icon: Icon(Icons.add_circle),
      label: Text('RaisedButton.icon'),
    );

    return Column(
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
          child: flatbtn2,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: flatbtn3,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: flatbtn4,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
        ),
        Container(
          child: flatbtn5,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
        ),
      ],
    );
  }

  void _showSnackBar(BuildContext context, String msg){
    final snackbar = SnackBar(
      content: Text(msg),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      action: SnackBarAction(
        label: 'Toast',
        textColor: Colors.white,
        onPressed: () => Fluttertoast.showToast(
          msg: '按下了SnackBar',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
          fontSize: 20,
        ),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}