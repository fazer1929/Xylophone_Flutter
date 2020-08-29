import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playAudio(int indexN) {
    player.play('note$indexN.wav');
  }

  Expanded showButton({Color color, int indexN}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(indexN);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("The Xylophone App")),
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              showButton(color: Colors.green[700], indexN: 1),
              showButton(color: Colors.green[400], indexN: 2),
              showButton(color: Colors.yellowAccent, indexN: 3),
              showButton(color: Colors.orangeAccent, indexN: 4),
              showButton(color: Colors.redAccent, indexN: 5),
              showButton(color: Colors.indigoAccent, indexN: 6),
              showButton(color: Colors.blue[800], indexN: 7),
            ],
          ),
        ),
      ),
    );
  }
}
