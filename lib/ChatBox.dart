import 'package:flutter/material.dart';
// import 'contactUs.dart';
import 'sizeconfig.dart';

class chatbox extends StatelessWidget {
  Radius radius = Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              // child: Image.asset('images/Profile.png'),
              foregroundColor: Colors.black26,
              radius: (22/4.1)*SizeConfig.blockSizeHorizontal,
            ),
            SizedBox(
              width: (10/4.1)*SizeConfig.blockSizeHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Sachin Parekh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (16/4.1)*SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      Text(
                        ' | Beauty',
                        style: TextStyle(
                          fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (5.0/4.1)*SizeConfig.blockSizeHorizontal,
                  ),
                  Text(
                    'online',
                    style: TextStyle(
                      fontSize: (10/4.1)*SizeConfig.blockSizeHorizontal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: SizeConfig.screenWidth,
          height: (70 / 6.8) * SizeConfig.blockSizeVertical,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: (550 / 6.8) * SizeConfig.blockSizeHorizontal,
                  height: (50 / 6.8) * SizeConfig.blockSizeVertical,
                  decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topRight: Radius.circular(5.0))),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Container(
                  width: (100 / 6.8) * SizeConfig.blockSizeHorizontal,
                  height: (50 / 6.8) * SizeConfig.blockSizeVertical,
                  decoration: BoxDecoration(
                      color: Color(0xFF6224CF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topRight: Radius.circular(5.0))),
                  child: MaterialButton(
                    child: Icon(Icons.send, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Sender(radius: radius,
            message: 'Lorem ipsum dolor sit amet, consectetur\nadipisicing aut fugit, sed quia a consequuntur.',
            
            ),
            SizedBox(
              height: (15/6.83)*SizeConfig.blockSizeVertical,
            ),
            Reciever(radius: radius,
            message: 'Hey!!',
            ),
            SizedBox(
              height: (15/6.83)*SizeConfig.blockSizeVertical,
            ),
            Reciever(radius: radius,
            message: 'I want your help.',
            ),
            SizedBox(
              height: (15/6.83)*SizeConfig.blockSizeVertical,
            ),
            Reciever(
              radius: radius,
              message: 'Call me right now',
            )
          ],
        ),
      ),
    );
  }
}

class Reciever extends StatelessWidget {
  
  Reciever({this.message, this.radius});

  final message;
  final Radius radius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        width: (150/4.1)*SizeConfig.blockSizeHorizontal,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xFFEFEEEE),
            borderRadius: BorderRadius.only(
                topRight: radius, topLeft: radius, bottomRight: radius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: (11/4.1)*SizeConfig.blockSizeHorizontal),
            ),
            SizedBox(
              height: (5.0/4.1)*SizeConfig.blockSizeHorizontal,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('12:30 pm',
                style: TextStyle(
                  fontSize: (8/4.1)*SizeConfig.blockSizeHorizontal,
                  color: Colors.grey,
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Sender extends StatelessWidget {

  Sender({this.message, this.radius});
  final message;
  final Radius radius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(
        width: (250/4.1)*SizeConfig.blockSizeHorizontal,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xFFD6E9FC),
            borderRadius: BorderRadius.only(
              topRight: radius,
              topLeft: radius,
              bottomLeft: radius,
            )),
        child: Column(
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: (11/4.1)*SizeConfig.blockSizeHorizontal),
            ),
            SizedBox(
              height: (5/4.1)*SizeConfig.blockSizeHorizontal,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('12:30 pm',
                style: TextStyle(
                  fontSize: (8/4.1)*SizeConfig.blockSizeHorizontal,
                  color: Colors.grey,
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
