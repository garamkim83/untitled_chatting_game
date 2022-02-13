import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/friendProfileCard.dart';

import './friendProfileCard.dart';

class friendPage extends StatefulWidget {
  const friendPage({Key? key}) : super(key: key);

  @override
  _friendPageState createState() => _friendPageState();
}

class _friendPageState extends State<friendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          friendProfileCard(),
        ],
      ),
    );
  }
}
