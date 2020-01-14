import 'package:flutter/material.dart';
import 'package:hire_me/Chat.dart';
import 'package:hire_me/ChatBox.dart';
import 'package:hire_me/Notification.dart';
import 'package:hire_me/Provider/Marketplace.dart';
import 'package:hire_me/Provider/SPMyProfile.dart';
import 'package:hire_me/Provider/SPprofile.dart';
import 'package:hire_me/Provider/Spchat.dart';
import 'package:hire_me/Provider/spNotification.dart';
import 'package:hire_me/sizeconfig.dart';

class SPBottomBar extends StatelessWidget {
  const SPBottomBar({this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth,
      height: (70 / 6.8) * SizeConfig.blockSizeVertical,
      child: Padding(
        padding: EdgeInsetsDirectional.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          IconButton(
            icon: Icon(Icons.shop,color: value == 1 ? Color(0xFF6224CF) : Colors.grey),
            onPressed: (){
             
            },
          ),
           IconButton(
            icon: Icon(Icons.insert_drive_file,color: value == 2 ? Color(0xFF6224CF) : Colors.grey),
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return marketplace();
              }));
            },
          ),
           IconButton(
            icon: Icon(Icons.chat_bubble,color:value == 3 ? Color(0xFF6224CF) : Colors.grey),
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                return spchat();
              }));
            },
          ),
           IconButton(
            icon: Icon(Icons.notifications,color: value == 4 ? Color(0xFF6224CF) : Colors.grey),
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                return spnotification();
              }));
            },
          ),
           IconButton(
            icon: Icon(Icons.person,color: value == 5 ? Color(0xFF6224CF) : Colors.grey),
            onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return spprofile();
              }));
            },
          ),
          ],
        ),
      ),
    );
  }
}
