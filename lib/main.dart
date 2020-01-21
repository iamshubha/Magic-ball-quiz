import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int numberC = 4;
  void numberF() {
    setState(() {
      numberC = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: new AppBar(
          centerTitle: true,
          title: Text(
            "data",
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: FlatButton(
            onPressed: () {
              numberF();
            },
            child: Image.asset('images/ball$numberC.png'),
          ),
        ),
      ),
    );
  }
}
