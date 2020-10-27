import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: Dicee(),
    ),
  ));
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void diceFace(){
    setState(() {
      leftDicenumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  diceFace();
                },
                child: Image.asset('images/dice$leftDicenumber.png'),
              )),
          Expanded(
            child: FlatButton(
              onPressed: (){
                diceFace();
              },
              child: Image.asset('images/dice$rightDicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


