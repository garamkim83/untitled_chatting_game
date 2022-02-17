import 'dart:ffi';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:untitled_chatting_game/Model/chatModel.dart';

class IndividualChatPage extends StatefulWidget {
  const IndividualChatPage({Key? key, required this.chatModel})
      : super(key: key);
  final ChatModel chatModel;

  @override
  _IndividualChatPageState createState() => _IndividualChatPageState();
}

class _IndividualChatPageState extends State<IndividualChatPage> {
  bool show = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          show = false;
        });
      }
    });
  }

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 60,
                        child: Card(
                          margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: TextFormField(
                            focusNode: focusNode,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a message!",
                              contentPadding: EdgeInsets.only(left: 15),
                              prefixIcon: IconButton(
                                icon: Icon(Icons.emoji_emotions),
                                onPressed: () {
                                  focusNode.unfocus();
                                  focusNode.canRequestFocus = false;
                                  setState(() {
                                    show = !show;
                                  });
                                },
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                //attach file icon and camera icon
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.attach_file),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.camera_alt),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 8),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          child: IconButton(
                            icon: Icon(
                              Icons.mic,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                  show ? selectEmoji() : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectEmoji() {
    return SizedBox(
      height: 250,
      child: EmojiPicker(
        config: Config(
          columns: 7,
        ),
        onEmojiSelected: (Emoji, Category) {
          print(Emoji);
        },
      ),
    );
  }
}
