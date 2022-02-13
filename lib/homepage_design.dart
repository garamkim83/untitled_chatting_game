import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FriendList extends StatefulWidget {
  static const title = 'Friends';
  static const androidIcon = Icon(Icons.account_circle_outlined);
  static const iosIcon = Icon(CupertinoIcons.person_2);

  const FriendList({Key? key}) : super(key: key);

  @override
  _FriendListState createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          color: Colors.amber[index],
          child: Center(child: Text('Friend ${entries[index]}')),
        );
      },
    );
  }
}
