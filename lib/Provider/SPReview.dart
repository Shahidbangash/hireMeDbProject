import 'package:flutter/material.dart';
import 'package:hire_me/sizeconfig.dart';

class spreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('Your Reviews'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Material(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width:
                                  (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                            ),
                            Text('All the Reviews',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.format_align_left,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width:
                                  (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                            ),
                            Text('Newest First',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Review(),
            Review(),
            Review(),
            Review(),
          ],
        ),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({
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
                    radius: (30 / 6.82) * SizeConfig.blockSizeVertical,
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
                          fontSize: (17 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      Text(
                        '3.5 ★ ',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: (14 / 4.1) * SizeConfig.blockSizeHorizontal,
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
                  fontSize: (11 / 4.1) * SizeConfig.blockSizeHorizontal,
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
