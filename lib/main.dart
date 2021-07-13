import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:change_app_package_name/change_app_package_name.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final AudioCache player = AudioCache();
  Expanded myWidgets({int audioNum: 1, Color color: Colors.red}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: color,
        ),
        onPressed: () {
          player.play("note$audioNum.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          myWidgets(color: Colors.red, audioNum: 1),
          myWidgets(color: Colors.orange, audioNum: 2),
          myWidgets(color: Colors.yellow, audioNum: 3),
          myWidgets(color: Colors.green, audioNum: 4),
          myWidgets(color: Colors.brown, audioNum: 5),
          myWidgets(color: Colors.indigo, audioNum: 6),
          myWidgets(color: Colors.purpleAccent, audioNum: 7),
        ],
      ),
    );
  }
}
