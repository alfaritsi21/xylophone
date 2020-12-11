import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded buildKey({Color color, int audioNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playAudio(audioNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.redAccent, audioNumber: 1),
              buildKey(color: Colors.blueAccent, audioNumber: 2),
              buildKey(color: Colors.yellowAccent, audioNumber: 3),
              buildKey(color: Colors.purpleAccent, audioNumber: 4),
              buildKey(color: Colors.greenAccent, audioNumber: 5),
              buildKey(color: Colors.deepPurpleAccent, audioNumber: 6),
              buildKey(color: Colors.pinkAccent, audioNumber: 7),

              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(1);
              //     },
              //     color: Colors.redAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(2);
              //     },
              //     color: Colors.blueAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(3);
              //     },
              //     color: Colors.yellowAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(4);
              //     },
              //     color: Colors.purpleAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(5);
              //     },
              //     color: Colors.greenAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(6);
              //     },
              //     color: Colors.deepPurpleAccent,
              //   ),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playAudio(7);
              //     },
              //     color: Colors.pinkAccent,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
