import 'package:flutter/material.dart';

import 'package:untitled_chatting_game/CustomUI/friendProfileCard.dart';
import 'package:untitled_chatting_game/Model/chatModel.dart';
import 'package:untitled_chatting_game/Model/friendProfileModel.dart';
import '../data/friendProfileData.dart';
import '../CustomUI/contactCard.dart';

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
              "256 Contacts",
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
        itemCount: contacts.length,
        itemBuilder: ((context, index) => ContactCard(
              chatModel: contacts[index],
            )),
      ),
    );
  }
}
