import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Ballpage(),
  ),
);

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Ballimage(),
    );
  }
}

class Ballimage extends StatefulWidget {
  @override
  _BallimageState createState() => _BallimageState();
}

class _BallimageState extends State<Ballimage> {
  int Ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              Ballno = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$Ballno.png'),
        ),
      ),
    );
  }
}
