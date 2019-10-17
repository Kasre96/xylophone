import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function to play notes
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  // function to build expanded widget
  Expanded buildWidget({Color color, int noteNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text(text),
        onPressed: () {
          playNote(noteNumber);
        }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildWidget(color: Colors.redAccent, noteNumber: 1, text: 'A'),
                buildWidget(color: Colors.orange, noteNumber: 2, text: 'B'),
                buildWidget(color: Colors.yellow, noteNumber: 3, text: 'C'),
                buildWidget(color: Colors.green, noteNumber: 4, text: 'D'),
                buildWidget(color: Colors.blue, noteNumber: 5, text: 'E'),
                buildWidget(color: Colors.tealAccent, noteNumber: 6, text: 'F'),
                buildWidget(color: Colors.teal, noteNumber: 7, text: 'G'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
