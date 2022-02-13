import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/CustomUI/friendProfileCard.dart';

import '../CustomUI/friendProfileCard.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
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
