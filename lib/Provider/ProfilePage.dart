import 'package:flutter/material.dart';
import 'package:hire_me/Provider/SPReview.dart';
import 'package:hire_me/sizeconfig.dart';

class profilepage extends StatefulWidget {
  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6224CF),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Color(0xFF6224CF),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Color(0xFFF6F8F9),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: (160 / 6.83) * SizeConfig.blockSizeVertical,),
            child: Container(
              color: Colors.white,
              height: (225.0 / 6.83) * SizeConfig.blockSizeVertical,
              width: (350.0 / 4.1) * SizeConfig.blockSizeHorizontal,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '3.5 ★ ',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize:
                                (14 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                        Text(
                          '(98)',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                (11 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (35 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Alex John',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (17 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      Text(
                        ' | Plumber',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (30 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  Text(
                    '2.3 Km',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                    ),
                  ),
                  Text(
                    'away from you',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                    ),
                  ),
                  SizedBox(
                    height: (10 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: (350.0 / 4.1) * SizeConfig.blockSizeHorizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    elevation: 3,
                    color: Color(0xFF6224CF),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          Text('Save', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    elevation: 3,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.message,
                            color: Color(0xFF6224CF),
                          ),
                          SizedBox(
                            width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                          ),
                          Text('Message',
                              style: TextStyle(color: Color(0xFF6224CF))),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: (370 / 6.83) * SizeConfig.blockSizeVertical,),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/Profile.png'),
              radius: (60 / 4.1) * SizeConfig.blockSizeHorizontal,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: (330 / 6.83) * SizeConfig.blockSizeVertical,left: 10.0,right:10.0),
            child: Card(
              
                child: Column(
              children: <Widget>[
                TabBar(
                  indicatorColor:Color(0xFF6224CF),    
                  indicatorPadding: EdgeInsets.only(left: 50,right: 50),
                  controller: _controller,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'About',
                        style:TextStyle(
                          color: Colors.grey,
                        )
                      ),
                    ),
                    Tab(
                      child:Text(
                        'Reviews',
                        style:TextStyle(
                          color: Colors.grey,
                        )
                      )
                    ),
                  ],
                ),
                Review1(),
              ],
            )),
          )
        ],
      ),
    );
  }
}
class Review1 extends StatelessWidget {
  const Review1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/p4.jpg'),
                    foregroundColor: Colors.black26,
                    radius: (25 / 6.82) * SizeConfig.blockSizeVertical,
                  ),
                  SizedBox(
                    width: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Emol Williams',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      Text(
                        '3.5 ★ ',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '21-01-18',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: (9/ 4.1) * SizeConfig.blockSizeHorizontal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: (15 / 6.83) * SizeConfig.blockSizeVertical,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisingny elit, sed do eiusmod tempor incididunt ut labore entry dolore magna aliqua',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
