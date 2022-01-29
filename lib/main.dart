// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int keyNote) {
    final player = AudioCache();
    player.play('key$keyNote.mp3');
  }

  Expanded buildKey({required Color color, required int keyNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(keyNumber);
        },
        child: Text("Note $keyNumber"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildKey(color: Colors.red.shade200, keyNumber: 01),
                      buildKey(color: Colors.orange.shade200, keyNumber: 03),
                      buildKey(color: Colors.yellow.shade200, keyNumber: 05),
                      buildKey(color: Colors.green.shade200, keyNumber: 07),
                      buildKey(color: Colors.blue.shade200, keyNumber: 09),
                      buildKey(color: Colors.indigo.shade200, keyNumber: 11),
                      buildKey(color: Colors.purple.shade200, keyNumber: 13),
                      buildKey(color: Colors.grey.shade200, keyNumber: 15),
                      buildKey(color: Colors.brown.shade200, keyNumber: 17),
                      buildKey(color: Colors.teal.shade200, keyNumber: 19),
                      buildKey(color: Colors.pink.shade200, keyNumber: 21),
                      buildKey(
                          color: Colors.purpleAccent.shade200, keyNumber: 23),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildKey(color: Colors.red.shade400, keyNumber: 02),
                      buildKey(color: Colors.orange.shade400, keyNumber: 04),
                      buildKey(color: Colors.yellow.shade400, keyNumber: 06),
                      buildKey(color: Colors.green.shade400, keyNumber: 08),
                      buildKey(color: Colors.blue.shade400, keyNumber: 10),
                      buildKey(color: Colors.indigo.shade400, keyNumber: 12),
                      buildKey(color: Colors.purple.shade400, keyNumber: 14),
                      buildKey(color: Colors.grey.shade400, keyNumber: 16),
                      buildKey(color: Colors.brown.shade400, keyNumber: 18),
                      buildKey(color: Colors.teal.shade400, keyNumber: 20),
                      buildKey(color: Colors.pink.shade400, keyNumber: 22),
                      buildKey(
                          color: Colors.purpleAccent.shade400, keyNumber: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
