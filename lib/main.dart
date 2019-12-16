import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded _soundButton(Color color, int soundNumber) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            _playSound(soundNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _soundButton(Colors.red, 1),
            _soundButton(Colors.orange, 2),
            _soundButton(Colors.yellow, 3),
            _soundButton(Colors.green, 4),
            _soundButton(Colors.teal, 5),
            _soundButton(Colors.blue, 6),
            _soundButton(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
