import 'package:flutter/material.dart';

class chatBubble extends StatelessWidget {
  const chatBubble({
    Key? key,
    required this.color,
    required this.alignment,
    required this.message,
    required this.time,
    required this.isMe,
  }) : super(key: key);

  final Color color;
  final Alignment alignment;
  final String message, time;
  final isMe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: .4,
                spreadRadius: .8,
                color: Colors.black.withOpacity(.13),
              ),
            ],
            color: isMe ? Colors.white : Colors.black.withOpacity(.13),
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 48),
                child: Text(message),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
