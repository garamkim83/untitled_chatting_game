import 'package:flutter/material.dart';

class chatBubble extends StatelessWidget {
  const chatBubble({
    Key? key,
    required this.color,
    required this.alignment,
    required this.message,
    required this.time,
    required this.isMe,
    required this.isRead,
  }) : super(key: key);

  final Color color;
  final Alignment alignment;
  final String message, time;
  final isMe, isRead;

  @override
  Widget build(BuildContext context) {
    final icon = isRead
        ? Icon(Icons.done, color: Colors.white)
        : Icon(Icons.done, color: Colors.black87);

    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
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
        Row(
          children: [
            Text(time),
            SizedBox(
              width: 3.0,
            ),
            icon,
          ],
        ),
      ],
    );
  }
}
