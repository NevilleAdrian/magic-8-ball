import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me anything',
              style: TextStyle(
                  fontSize: 30.0,
              ),
            ),
            backgroundColor: Colors.blue.shade800,

          ),
          body: Decision(),
        ),
      ),
    );

class Decision extends StatefulWidget {
  @override
  _DecisionState createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  int ball = 1;

  void rollBall () {
    ball = Random().nextInt(4) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
             rollBall();
          });
        },
        child: Image.asset('images/ball$ball.png'),
      ),
    );
  }
}
