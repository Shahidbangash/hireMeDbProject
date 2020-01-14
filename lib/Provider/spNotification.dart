import 'package:flutter/material.dart';
import 'package:hire_me/Bottombar.dart';
import 'package:hire_me/Provider/SPBottombar.dart';
import 'package:hire_me/sizeconfig.dart';

class spnotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SPBottomBar(value: 4,),
      ),
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Color(0xFF6224CF),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            notify(
              image: AssetImage('images/p2.jpg'),
              subtitle: ' sent you an offer',
              title: 'Jack Ma',
              time: '31 mins ago',
            ),
            notify(
              image: AssetImage('images/p2.jpg'),
              subtitle: ' completed your task.\nReview and share your experience.',
              title: 'Jack Ma',
              time: '31 mins ago',
            ),
             notify(
              image: AssetImage('images/p5.jpg'),
              subtitle: ' has Cancelled the booking.',
              title: 'Mark',
              time: '5 mins ago',
            ),
             notify(
              image: AssetImage('images/p4.jpg'),
              subtitle: ' has rescheduled the booking.',
              title: 'The Rock',
              time: '54 mins ago',
            )
            
          ],
        ),
      )
    );
  }
}

class notify extends StatelessWidget {
  
  notify({this.image, this.title, this.subtitle, this.time,this.ontap});

  AssetImage image;
  String title;
  String subtitle;
  String time;
  Function ontap;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      elevation: 3.0,
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: CircleAvatar(
          backgroundImage: image,
          foregroundColor: Colors.black26,
          radius: (25/4.1)*SizeConfig.blockSizeHorizontal,
        ),
        title: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(text: title,style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text:subtitle,style: TextStyle(color:Colors.grey)),
            ]
          ),
        ),
        subtitle: Text(
          time,
          style: TextStyle(
            color: Colors.grey,
            fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
          ),
        ),
        onTap: ontap,
      ),
    );
  }
}
