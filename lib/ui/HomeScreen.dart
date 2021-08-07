import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AudioCache audioPlayer = AudioCache(prefix: 'assets/');

  void loadMusics() {
    audioPlayer.loadAll([
      'assets_note1.wav',
      'assets_note2.wav',
      'assets_note3.wav',
      'assets_note4.wav',
      'assets_note5.wav',
      'assets_note6.wav',
      'assets_note7.wav'
    ]);
  }
  Expanded playMusic(int number,Color color){
    return Expanded(
      child: TextButton(
          onPressed: () {
            audioPlayer.play("assets_note$number.wav");
          },
          child: Container(
            color: color,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    loadMusics();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          playMusic(1, Colors.red),
          playMusic(2, Colors.orange),
          playMusic(3, Colors.yellow),
          playMusic(4, Colors.green),
          playMusic(5, Colors.blue),
          playMusic(6, Colors.indigo),
          playMusic(7, Colors.purple),

        ],
      ),
    );
  }
}
