import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps.
//Shortuct:  Ctrl + shift + I    -- shows properties
//Shortcut:  Ctrl + w    --selects entire widget
//Shortcut:  Ctrl + Alt + L   --reformatt the code
void main() {
  //changes the height/width of image
  double heightImage = 200;
  double widthImage = 350;

  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "I LIKE FOOD",
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          backgroundColor: Colors.grey,
          body: Center(
            child: Image(
              colorBlendMode: BlendMode.softLight,
              image: AssetImage("assetimage/breakfast.jpg"),
            ),
          ),
      ),
    ),
  );
}
