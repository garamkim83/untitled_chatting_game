import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/Model/chatModel.dart';

import '../CustomUI/chatCard.dart';
import '../Model/chatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Nick",
      icon: Icons.person_outline,
      isGroup: false,
      time: "6:00",
      currentMessage: "Hi, everyone!",
    ),
    ChatModel(
      name: "Noah",
      icon: Icons.person_outline,
      isGroup: false,
      time: "7:00",
      currentMessage: "Hi!",
    ),
    ChatModel(
      name: "jolly",
      icon: Icons.person_outline,
      isGroup: false,
      time: "8:30",
      currentMessage: "Hello!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => ChatCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
