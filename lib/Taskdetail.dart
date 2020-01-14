import 'package:flutter/material.dart';
import 'package:hire_me/Sseakerloginpage.dart';
import 'sizeconfig.dart';

class TaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF6F8F9),
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('Task Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 1,
            child: Padding(
              padding:
                  EdgeInsets.all((10 / 4.1) * SizeConfig.blockSizeHorizontal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            // backgroundImage: AssetImage('images/p5.jpg'),
                            foregroundColor: Colors.black26,
                            radius: (35 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          SizedBox(
                            width: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          Text('Alex John',
                              style: TextStyle(
                                  fontSize: (15 / 4.1) *
                                      SizeConfig.blockSizeHorizontal,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: (10 / 4.1) * SizeConfig.blockSizeHorizontal),
                        child: IconButton(
                          icon: Icon(Icons.message, color: Color(0xFF6224CF)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SsLogin()));
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: (86.0 / 4.1) * SizeConfig.blockSizeHorizontal),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Job task',
                            style: TextStyle(
                              fontSize:
                                  (11 / 4.1) * SizeConfig.blockSizeHorizontal,
                              color: Colors.grey,
                            )),
                        Text('Tap, Wash Basin and sink problem',
                            style: TextStyle(
                              fontSize:
                                  (13 / 4.1) * SizeConfig.blockSizeHorizontal,
                            )),
                        SizedBox(
                          height: (17 / 6.83) * SizeConfig.blockSizeVertical,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Booking for',
                                  style: TextStyle(
                                    fontSize: (11 / 4.1) *
                                        SizeConfig.blockSizeHorizontal,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text('28-08-19 kl 09:15',
                                    style: TextStyle(
                                      fontSize: (13 / 4.1) *
                                          SizeConfig.blockSizeHorizontal,
                                    )),
                              ],
                            ),
                            SizedBox(
                              width:
                                  (50 / 4.1) * SizeConfig.blockSizeHorizontal,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Job fee',
                                  style: TextStyle(
                                    fontSize: (11 / 4.1) *
                                        SizeConfig.blockSizeHorizontal,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text('1234 kr.',
                                    style: TextStyle(
                                      fontSize: (13 / 4.1) *
                                          SizeConfig.blockSizeHorizontal,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (17 / 6.83) * SizeConfig.blockSizeVertical,
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize:
                                (11 / 4.1) * SizeConfig.blockSizeHorizontal,
                            color: Colors.grey,
                          ),
                        ),
                        Text('Amalieparken 10, st 3\n2665 Vallensbaek',
                            style: TextStyle(
                              fontSize:
                                  (13 / 4.1) * SizeConfig.blockSizeHorizontal,
                            )),
                        SizedBox(
                          height: (17 / 6.83) * SizeConfig.blockSizeVertical,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: (60 / 6.83) * SizeConfig.blockSizeVertical,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Material(
                    elevation: 3,
                    child: MaterialButton(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.close,
                              color: Colors.grey,
                              size: (17 / 4.1) * SizeConfig.blockSizeHorizontal,
                            ),
                            SizedBox(
                              width:
                                  (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                            ),
                            Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: (14 / 4.1) *
                                      SizeConfig.blockSizeHorizontal),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    color: Color(0xFF6224CF),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: (17 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          SizedBox(
                            width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          Text(
                            'Complete Task',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: (14 / 4.1) *
                                    SizeConfig.blockSizeHorizontal),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: (14 / 6.83) * SizeConfig.blockSizeVertical,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                right: (20 / 4.1) * SizeConfig.blockSizeHorizontal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Timeline',
                  style: TextStyle(color: Color(0xFF6D6B71)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
