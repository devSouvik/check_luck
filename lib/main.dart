import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text('Clear Your Doubts ! '),
          ),
        ),
        body: ImageTry(),
      ),
    );
  }
}

class ImageTry extends StatefulWidget {
  @override
  _ImageTryState createState() => _ImageTryState();
}

class _ImageTryState extends State<ImageTry> {
  int buttonPressed = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              buttonPressed = Random().nextInt(5) + 1;
              print('pressed');

              Fluttertoast.showToast(
                  msg: "Imagine Your Next Question Please !",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  fontSize: 16.0
              );
              });
          },
          child: Image.asset("images/ball$buttonPressed.png"),
        ),
      ),
    );
  }
}
