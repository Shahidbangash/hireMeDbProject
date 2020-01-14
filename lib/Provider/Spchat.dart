import 'package:flutter/material.dart';
import 'package:hire_me/ChatBox.dart';
import 'package:hire_me/Provider/SPBottombar.dart';
import 'package:hire_me/sizeconfig.dart';


class spchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SPBottomBar(value: 3,),
      ),
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Color(0xFF6224CF),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SizedBox(
              height: (1/6.83)*SizeConfig.blockSizeVertical,
            ),
            chatting(
              image: AssetImage('images/Profile.png'),
              subtitle: ' | Beauty',
              title: 'Aliza Smith',
              message: 'Yes, How may I help you?',
              time: '12:31 pm',
              ontap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return chatbox();
                }));
              },
            ),
            chatting(
              image: AssetImage('images/p4.jpg'),
              subtitle: ' | Beauty',
              title: 'Peter James',
              message: 'Fine its 2500 last',
              time: '1 day ago',
            ),
            chatting(
              image: AssetImage('images/p2.jpg'),
              subtitle: ' | Home care',
              title: 'Alex John',
              message: 'Yeah, We are thankfull to you',
              time: '31 mins ago',
            ),
            chatting(
              image: AssetImage('images/p3.jpg'),
              subtitle: ' | Pest Control',
              title: 'Poul Wiliams',
              message: 'Okay done! Will be there.',
              time: '3 hour ago',
            ),
            chatting(
              image: AssetImage('images/p5.jpg'),
              subtitle: ' | Plumbing',
              title: 'John Rodricks',
              message: 'We hope your doing great',
              time: '2 days ago',
            ),
          ],
        ),
      ),
    );
  }
}

class chatting extends StatelessWidget {
  chatting({this.image, this.title, this.subtitle, this.message, this.time,this.ontap});

  AssetImage image;
  String title;
  String subtitle;
  String message;
  String time;
  Function ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: CircleAvatar(
          backgroundImage: image,
          foregroundColor: Colors.black26,
          radius: (29/4.1)*SizeConfig.blockSizeHorizontal,
        ),
        title: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (18/4.1)*SizeConfig.blockSizeHorizontal,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey,
                fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
              ),
            ),
          ],
        ),
        subtitle: Text(
          message,
          style: TextStyle(
            color: Colors.grey,
            fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
          ),
        ),
        trailing: Text(
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
