import 'package:flutter/material.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({Key? key}) : super(key: key);

  @override
  _ChatCardState createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: Icon(
          Icons.group,
          color: Colors.white,
          size: 38,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      title: Text(
        'Nick',
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
            'Hi, Nick!',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
      trailing: Text('18:04'),
    );
  }
}
