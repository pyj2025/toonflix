import 'package:flutter/material.dart';

class Player {
  String name;

  // Player(this.name, this.id);
  Player({required this.name});
}

void main() {
  // var human = Player("human");
  var human = Player(name: "human");

  human.name;
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // base theme Google = MaterialApp, Apple = CupertinoApp
    return MaterialApp(
      // home: Text("Hello world!"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Scaffold Appbar!"),
          centerTitle: false,
          elevation: 100,
        ),
        body: Center(
          child: Text("Flutter body Center child text!"),
        ),
      ),
    );
  }
}
