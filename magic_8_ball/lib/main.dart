import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void getAnswer() {
    setState(() {
      ballNumber = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                "Magic 8 Ball",
                style: GoogleFonts.bowlbyOneSc(
                  color: Colors.blueAccent,
                  fontSize: 55,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Ask me a question",
                style: GoogleFonts.pridi(fontSize: 30),
              ),
            ),
            Container(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Container(
                color: Colors.blue,
                child: FlatButton(
                  onPressed: getAnswer,
                  child: Text(
                    'Press me',
                    style: GoogleFonts.bungee(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
