import 'package:flutter/material.dart';

class friendProfileCard extends StatefulWidget {
  const friendProfileCard({Key? key}) : super(key: key);

  @override
  _friendProfileCardState createState() => _friendProfileCardState();
}

class _friendProfileCardState extends State<friendProfileCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
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
            'I\'m happy!',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
      trailing: Text('18:04'),
    );
  }
}
