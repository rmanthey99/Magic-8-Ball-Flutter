import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballImage = 1;

  void ballNumber() {
    ballImage = Random().nextInt(5) + 1;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber();
            });
          },
          child: Image.asset('images/ball$ballImage.png'),
        ),
      ),
    );
  }
}
