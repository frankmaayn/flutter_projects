import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Expanded widget -> allows the child to adapt on the size of the parent widget
//Stateless widget -> if the structure of the context does not change, this is preferred
//Stateful widget -> if the structure of the context does change, this is preferred
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDice() {
    setState(() {
      leftDiceNumber = 1 + Random().nextInt(6);
      rightDiceNumber = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Dice Roller',
              style: GoogleFonts.blackOpsOne(
                  color: Colors.lightBlueAccent[700],
                  fontSize: 60,
                  letterSpacing: 5,
                  height: 4.0),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: FloatingActionButton(
                onPressed: changeDice,
                child: Icon(Icons.whatshot_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
