import 'package:flutter/material.dart';
import 'package:sushi_go_score_tracker/main.dart';
import 'package:sushi_go_score_tracker/score_game.dart';

class Home extends State<App> {

  List<Widget> playerEntryListBuilder(int numberOfPlayers) {
    var players = List<Widget>();
    for (int i = 0; i < numberOfPlayers; i++) {
      players.add(TextFormField(
        decoration: InputDecoration(
            labelText: 'Enter Player ${i + 1} Name',
            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
      ));
    }
    return players;
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: playerEntryListBuilder(4)
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(context, ScoreGame()),
          tooltip: 'Start to game',
          child: Icon(Icons.play_arrow),
        ),
      );
  }
}
