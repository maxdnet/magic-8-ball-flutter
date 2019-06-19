import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Magic 8 Bar',
        home: Magic8(),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballNumber = 1;

  void getAnswer() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              getAnswer();
            },
          ),
        ),
      ),
    );
  }
}
