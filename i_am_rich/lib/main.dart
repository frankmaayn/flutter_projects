import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps.
//Shortuct:  Ctrl + shift + I    -- shows properties
//Shortcut:  Ctrl + w    --selects entire widget
//Shortcut:  Ctrl + Alt + L   --reformatt the code
void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
            child: Image(
              image: AssetImage('images/diamond.png'),

            ),
          ),
        )
    ),
  );
}
