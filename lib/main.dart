import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = Random().nextInt(6) + 1;
  int rightButtonNumber = Random().nextInt(6) + 1;
  void randomDice() {
    setState(() {
      leftButtonNumber = Random().nextInt(6) + 1;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$leftButtonNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomDice();
              },
              child: Image.asset('images/dice$rightButtonNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
