import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DiceyBody());
}

class DiceyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[900],
        appBar: AppBar(
          title: Text('Dicey - Double dice ❤'),
          backgroundColor: Colors.pink[800],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void getNum() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1, //Used to resize by adaptation
            child: FlatButton(
              onPressed: () {
                setState(() {
                  getNum();
                });
                //print('Left Button Pressed'); //used to diagnose apps from time to time
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  getNum();
                });
                //print('Right Button Pressed');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
