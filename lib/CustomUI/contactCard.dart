import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/CustomUI/chatCard.dart';
import 'package:untitled_chatting_game/Model/chatModel.dart';
import 'package:untitled_chatting_game/Page/selectContact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 23,
          child: Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          chatModel.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          chatModel.status,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
