import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String play) {
    final player = AudioCache();
    player.play(play);
  }

  Widget buildKey(int index, Color c) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: c,
        onPressed: () {
          playSound('note$index.wav');
        },
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.lightBlueAccent),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
