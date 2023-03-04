import 'package:flutter/material.dart';

import 'package:untitled_chatting_game/CustomUI/friend_profile_card.dart';
import 'package:untitled_chatting_game/Model/chat_model.dart';
import 'package:untitled_chatting_game/Model/friend_profile_model.dart';
import '../data/friend_profile_data.dart';
import '../CustomUI/contact_card.dart';
import '../CustomUI/button_card.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key, this.chatModel}) : super(key: key);
  final ChatModel? chatModel;

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${contacts.length} Contacts",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Invite a friend'),
                  value: 'Invite a friend',
                ),
                PopupMenuItem(
                  child: Text('Contact'),
                  value: 'Contact',
                ),
                PopupMenuItem(
                  child: Text('Refresh'),
                  value: 'Refresh',
                ),
                PopupMenuItem(
                  child: Text('Help'),
                  value: 'Help',
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ButtonCard(
                icon: Icons.group,
                name: "New Group",
              );
            } else if (index == 1) {
              return ButtonCard(
                icon: Icons.person_add,
                name: "New Contact",
              );
            }
            return ContactCard(contact: contacts[index - 2]);
          }),
    );
  }
}
