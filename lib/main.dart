import 'package:flutter/material.dart';
import 'package:mirrov/player.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MirroV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Player(),
    );
  }
}