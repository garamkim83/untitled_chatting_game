import 'dart:ffi';

import 'package:flutter/material.dart';
import './friendPage.dart';

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
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        child: TabBar(
          controller: _homeController,
          tabs: [
            Tab(
              icon: Icon(Icons.account_circle_outlined),
            ),
            Tab(
              icon: Icon(Icons.chat_outlined),
            ),
            Tab(
              icon: Icon(Icons.file_download_outlined),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _homeController,
        children: [
          Text('Friends'),
          Text('Chats'),
          Text('Downloads'),
        ],
      ),
    );
  }
}
