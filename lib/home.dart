import 'package:flutter/material.dart';
import 'package:sushi_go_score_tracker/game.dart';
import 'package:sushi_go_score_tracker/main.dart';

class Home extends Scaffold {

  AppState _caller;

  Home(State caller) {
    _caller = caller;
  }

  List<Widget> playerEntryListBuilder(int numberOfPlayers) {
    var players = List<Widget>();
    for(int i=0; i<numberOfPlayers; i++) {
      players.add(TextFormField(
        decoration: InputDecoration(
            labelText: 'Enter Player ${i + 1} Name',
            hintStyle: TextStyle(fontWeight: FontWeight.bold)),
      ));
    }
    return players;
  }

  @override
  Widget get body {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: playerEntryListBuilder(4)
      ),
    );
  }

  @override
  Widget get floatingActionButton => FloatingActionButton(
    onPressed: () => _caller.page(Game(_caller)),
    tooltip: 'Go to game',
    child: Icon(Icons.navigate_next),
  );
}