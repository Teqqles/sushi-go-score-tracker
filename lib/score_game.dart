import 'package:flutter/material.dart';

class ScoreGame extends MaterialPageRoute<Null> {
  ScoreGame()
      : super(builder: (BuildContext context) {
          return Scaffold(
              body: GridView.count(
            crossAxisCount: 3,
            // Generate 100 Widgets that display their index in the List
            children: List.generate(100, (index) {
              return Center(
                child: Image.asset("assets/pudding.png"),
              );
            }),
          ));
        });
}
