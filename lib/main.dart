import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static var colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
    Colors.blue,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                soundKey(1),
                soundKey(2),
                soundKey(3),
                soundKey(4),
                soundKey(5),
                soundKey(6),
                soundKey(7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget soundKey(int key) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: XylophoneApp.colors[key - 1], enableFeedback: false),
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('note$key.wav'));
      },
      child: SizedBox.shrink(),
    ),
  );
}
