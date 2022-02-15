import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:untitled_chatting_game/Model/chatModel.dart';
import '../CustomUI/chatCard.dart';
import './chatPage.dart';
import '../appBarMenu.dart';

class IndividualChatPage extends StatefulWidget {
  const IndividualChatPage({Key? key, required this.chatModel})
      : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualChatPageState createState() => _IndividualChatPageState();
}

class _IndividualChatPageState extends State<IndividualChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                child: Icon(
                  widget.chatModel.isGroup ? Icons.group : Icons.person_outline,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start, //name
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Last seen today at 12:30',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('View Contact'),
                  value: 'View Contact',
                ),
                PopupMenuItem(
                  child: Text('Media, Links, and Docs'),
                  value: 'Media, Links, and Docs',
                ),
                PopupMenuItem(
                  child: Text('Search'),
                  value: 'Search',
                ),
                PopupMenuItem(
                  child: Text('Mute Notifications'),
                  value: 'Mute Notifications',
                ),
                PopupMenuItem(
                  child: Text('Wallpaper'),
                  value: 'Wallpaper',
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(),
                    ),
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
