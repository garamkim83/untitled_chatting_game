import 'package:flutter/material.dart';
import 'package:untitled_chatting_game/Model/chatModel.dart';

import '../Page/chatPage.dart';
import '../Model/chatModel.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //make it clickable
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(
                chatModel.icon,
                color: Colors.white,
                size: 38,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
            trailing: Text('18:04'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
