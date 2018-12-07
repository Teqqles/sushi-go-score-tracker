import 'package:flutter/material.dart';
import 'package:sushi_go_score_tracker/main.dart';

class Game extends Scaffold {

  AppState _caller;

  Game(State caller) {
    _caller = caller;
  }
  @override
  Widget get body => GridView.count(
    crossAxisCount: 3,
    // Generate 100 Widgets that display their index in the List
    children: List.generate(100, (index) {
      return Center(
        child: Image.asset("assets/pudding.png"),
      );
    }),
  );

}