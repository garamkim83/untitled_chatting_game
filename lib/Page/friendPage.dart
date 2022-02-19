import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/CustomUI/friendProfileCard.dart';
import 'package:untitled_chatting_game/Model/friendProfileModel.dart';

import '../CustomUI/friendProfileCard.dart';
import '../data/friendProfileData.dart';

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
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) => friendProfileCard(
          friendProfileModel: friends[index],
        ),
      ),
    );
  }
}
