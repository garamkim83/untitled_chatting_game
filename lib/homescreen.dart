import 'package:flutter/material.dart';

import 'package:untitled_chatting_game/Page/chatPage.dart';
import 'package:untitled_chatting_game/ButtonAndMenu/appBarMenu.dart';
import 'Page/friendPage.dart';
import './Page/chatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _homeController;

  @override
  void initState() {
    super.initState();
    _homeController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Untitled Chat App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          AppBarMenu(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        child: TabBar(
          controller: _homeController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.chat_outlined,
                size: 32,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.file_download_outlined,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _homeController,
        children: [
          FriendPage(),
          ChatPage(),
          Text('Downloads'),
        ],
      ),
    );
  }
}
