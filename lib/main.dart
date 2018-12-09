import 'package:flutter/material.dart';
import 'package:sushi_go_score_tracker/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sushu Go - Score Tracker',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: App(title: 'Sushi Go! Score Tracker'),
    );
  }
}

class App extends StatefulWidget {
  App({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Home createState() => Home();
}