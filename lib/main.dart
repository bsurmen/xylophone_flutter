import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.wav');
  }

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
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  _playSound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                _playSound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                   _playSound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                _playSound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () {
                  _playSound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                 _playSound(6);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                   _playSound(7);
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
