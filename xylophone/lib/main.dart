import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        child: Text("Click me"),
      ),
    );
  }

//red,orange,yellow,green,blue,indigo,purple
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber: 1, color: Colors.red),
                buildKey(soundNumber: 2, color: Colors.orange),
                buildKey(soundNumber: 3, color: Colors.yellow),
                buildKey(soundNumber: 4, color: Colors.green),
                buildKey(soundNumber: 5, color: Colors.blue),
                buildKey(soundNumber: 6, color: Colors.indigo),
                buildKey(soundNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
