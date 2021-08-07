import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything'),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var magicBallDisplay = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            magicBallDisplay = Random().nextInt(5) + 1;
            print(magicBallDisplay);
          });
        },
        child: Image.asset('images/ball$magicBallDisplay.png'),
      ),
    );
  }
}
