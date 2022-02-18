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
        child: Icon(
          Icons.person_outline,
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
          SizedBox(
            width: 3,
          ),
          Text(
            'I\'m happy!',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
