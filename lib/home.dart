import 'package:flutter/material.dart';
import 'package:sushi_go_score_tracker/game.dart';
import 'package:sushi_go_score_tracker/main.dart';

class Home extends Scaffold {

  AppState _caller;

  Home(State caller) {
    _caller = caller;
  }

  @override
  Widget get body {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Enter Player 1 Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Enter Player 2 Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Enter Player 3 Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Enter Player 4 Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
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