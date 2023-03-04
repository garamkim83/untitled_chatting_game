import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  String name;
  IconData? icon;
  bool isGroup;
  String time;
  String status;
  String currentMessage;
  ChatModel({
    required this.name,
    this.icon,
    this.isGroup = false,
    this.time = '',
    this.status = '',
    this.currentMessage = '',
  });
}
