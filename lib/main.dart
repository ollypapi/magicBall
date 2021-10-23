import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Robot'),
            backgroundColor: Colors.blue,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNumber = 1;

  void onPressBall() {
    ballNumber = Random().nextInt(5) + 1;
    //print('Ball Number : $ballNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            onPressBall();
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
