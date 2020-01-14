import 'package:flutter/material.dart';
// import 'package:lesco/sizeconfig.dart';

class progress extends StatelessWidget {
  progress({this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            progresstile(
              // image: AssetImage('images/p4.jpg'),
              subtitle: ' | Beauty',
              title: 'Peter James',
              message: '17-09-19 kl 10:15',
              status: status,
              kr: '2345 kr.',
            ),
            progresstile(
              // image: AssetImage('images/Profile.png'),
              subtitle: ' | Beauty',
              title: 'Alex John',
              message: '17-09-19 kl 10:15',
              status: status,
              kr: '2345 kr.',
            ),
            progresstile(
              // image: AssetImage('images/p3.jpg',),
              subtitle: ' | Beauty',
              title: 'Poul Williams',
              message: '17-09-19 kl 10:15',
              status: status,
              kr: '2345 kr',
            ),
            progresstile(
              // image: AssetImage('images/p5.jpg',),
              subtitle: ' | Beauty',
              title: 'Alan Walker',
              message: '17-09-19 kl 10:15',
              status: status,
              kr: '2345 kr',
            ),
          ],
        ),
      ),
    );
  }
}

class progresstile extends StatelessWidget {
  progresstile(
      {this.image,
      this.title,
      this.subtitle,
      this.status,
      this.message,
      this.kr,
      this.ontap});

  final AssetImage image;
  final String title;
  final String subtitle;
  final String message;
  final String kr;
  final Function ontap;
  final String status;

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Material(
      elevation: 3.0,
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: CircleAvatar(
          backgroundImage: image,
          // radius: (28/4.1)*SizeConfig.blockSizeHorizontal,
        ),
        title: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontSize: (18/4.1)*SizeConfig.blockSizeHorizontal,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey,
                // fontSize:  (12/4.1)*SizeConfig.blockSizeHorizontal,
              ),
            ),
          ],
        ),
        subtitle: Text(
          message,
          style: TextStyle(
            color: Colors.grey,
            // fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              status,
              style: TextStyle(
                color: Color(0xFF6224CF),
                // fontSize:  (12/4.1)*SizeConfig.blockSizeHorizontal,
              ),
            ),
            SizedBox(
                // height:  (5/6.83)*SizeConfig.blockSizeVertical,
                ),
            Text(
              kr,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        onTap: ontap,
      ),
    );
  }
}
