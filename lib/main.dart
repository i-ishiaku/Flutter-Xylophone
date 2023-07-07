import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(xylophone());

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void playsound(newsound) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$newsound.wav'),
    );
  }

  Expanded buildkey({required Color color, required int newsound}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playsound(newsound);
        },
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
              buildkey(color: Colors.blueAccent, newsound: 1),
              buildkey(color: Colors.blueGrey, newsound: 2),
              buildkey(color: Colors.yellowAccent, newsound: 3),
              buildkey(color: Colors.greenAccent, newsound: 4),
              buildkey(color: Colors.orangeAccent, newsound: 5),
              buildkey(color: Colors.purpleAccent, newsound: 6),
              buildkey(color: Colors.redAccent, newsound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
