import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/CustomUI/friend_profile_card.dart';
import 'package:untitled_chatting_game/Model/friend_profile_model.dart';

import '../data/friend_profile_data.dart';

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
