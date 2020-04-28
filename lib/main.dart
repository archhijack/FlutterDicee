import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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

  int leftDie = 1;
  int rightDie = 1;

  void stateChange() {
    setState(() {
      rightDie = Random().nextInt(6) + 1;
      leftDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(onPressed: (){
                return stateChange();
                print('Left Button Pressed');
              },
                child: Image.asset('images/dice$leftDie.png'),
              )),
          Expanded(
            child: FlatButton(onPressed: (){
              return stateChange();
              print('Right Button Pressed');
            },
              child: Image.asset('images/dice$rightDie.png'),
            ),
          ),
        ],
      ),
    );
  }
}


