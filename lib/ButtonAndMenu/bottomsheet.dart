import 'package:flutter/material.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  _BottomsheetState createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Iconcreation(Icons.insert_drive_file, Colors.blue, "Document"),
                Iconcreation(Icons.camera_alt, Colors.pink, "Camera"),
                Iconcreation(Icons.insert_photo, Colors.purple, "Gallery"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Iconcreation(Icons.headset, Colors.amber, "Audio"),
                Iconcreation(Icons.location_pin, Colors.orange, "Location"),
                Iconcreation(Icons.person, Colors.cyan, "Gallery"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget Iconcreation(IconData icon, Color color, String text) {
  return InkWell(
    onTap: () {},
    child: SizedBox(
      width: 90,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 28,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            text,
            style: TextStyle(
              //fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}
