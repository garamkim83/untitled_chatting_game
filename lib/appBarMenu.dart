import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text('New Group'),
            value: 'New Group',
          ),
          PopupMenuItem(
            child: Text('New Broadcast'),
            value: 'New Broadcast',
          ),
          PopupMenuItem(
            child: Text('Start Messages'),
            value: 'Start Messages',
          ),
          PopupMenuItem(
            child: Text('Settings'),
            value: 'Settings',
          ),
          PopupMenuItem(
            child: Text('Help'),
            value: 'Help',
          ),
        ];
      },
    );
  }
}
