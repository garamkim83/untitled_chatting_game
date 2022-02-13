import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import './homepage_design.dart';

class FriendTab extends StatefulWidget {
  static const title = 'Friends';
  static const androidIcon = Icon(Icons.account_circle_outlined);
  static const iosIcon = Icon(CupertinoIcons.person_2);

  const FriendTab({Key? key, this.androidDrawer}) : super(key: key);

  final Widget? androidDrawer;

  @override
  _FriendTabState createState() => _FriendTabState();
}

class _FriendTabState extends State<FriendTab> {
  static const _itemsLength = 50;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    _setData();
    super.initState();
  }

  void _setData(){
    colors = getRandomColors(_itemsLength)
  }

  Widget _listBuilder(BuildContext context, int index){
    if() return Container();
  }
}
