import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({ Key? key }) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource(
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225638/index.m3u8",
        autoPlay: true);
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: FijkView(player: player),
    ),);
  }
}