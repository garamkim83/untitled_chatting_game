import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/Model/chat_model.dart';
import 'package:untitled_chatting_game/Page/select_contact.dart';

import '../CustomUI/chat_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Nick",
      isGroup: false,
      time: "8:00",
      currentMessage: "Hi, everyone!",
    ),
    ChatModel(
      name: "Noah",
      isGroup: false,
      time: "7:00",
      currentMessage: "Hi!",
    ),
    ChatModel(
      name: "Jolly",
      isGroup: false,
      time: "6:30",
      currentMessage: "Hello!",
    ),
    ChatModel(
      name: "Family",
      isGroup: true,
      time: "1:30",
      currentMessage: "Hey!",
    ),
    ChatModel(
      name: "Friends",
      isGroup: true,
      time: "1:10",
      currentMessage: "Hey guys!",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
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
