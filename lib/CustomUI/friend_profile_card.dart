import 'package:flutter/material.dart';

import 'package:untitled_chatting_game/Model/friend_profile_model.dart';
import '../Page/individual_profile_page.dart';

class friendProfileCard extends StatelessWidget {
  const friendProfileCard({Key? key, required this.friendProfileModel})
      : super(key: key);
  final FriendProfileModel friendProfileModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //make it clickable
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualProfilePage(
              friendProfileModel: friendProfileModel,
            ),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 38,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              friendProfileModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                SizedBox(
                  width: 3,
                ),
                Text(
                  friendProfileModel.statusMessage,
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
