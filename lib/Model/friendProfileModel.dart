import 'package:flutter/material.dart';

class FriendProfileModel {
  String name;
  IconData? icon;
  String statusMessage;
  FriendProfileModel({
    required this.name,
    this.icon,
    required this.statusMessage,
  });
}
