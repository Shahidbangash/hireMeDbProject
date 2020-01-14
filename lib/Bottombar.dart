import 'package:flutter/material.dart';


import 'Chat.dart';
import 'ChatBox.dart';
import 'InProgress.dart';
import 'Notification.dart';
import 'Profile.dart';
import 'Request.dart';
import 'sizeconfig.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth,
      height: (70 / 6.8) * SizeConfig.blockSizeVertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.library_books,
              color: value == 1 ? Color(0xFF6224CF) : Colors.grey,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return requests();
              }));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.forum,
              color: value == 2 ? Color(0xFF6224CF) : Colors.grey,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return chat();
              }));
            },
          ),
          Container(
            height: 60,
            width: 60,
            child: Material(
              color: Color(0xFF6224CF),
              borderRadius: BorderRadius.circular(60),
              child: Center(
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: value == 3 ? Color(0xFF6224CF) : Colors.grey,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return notification();
              }));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: value == 4 ? Color(0xFF6224CF) : Colors.grey,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return profile();
              }));
            },
          ),
        ],
      ),
    );
  }
}
