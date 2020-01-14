import 'package:flutter/material.dart';
import 'package:hire_me/Provider/SPBottombar.dart';
import 'package:hire_me/sizeconfig.dart';

class rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6224CF),
        title: Text('Reviews'),
      ),
      bottomNavigationBar: SPBottomBar(),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFF6224CF),
            height: (450 / 6.8) * SizeConfig.blockSizeVertical,
            child: SingleChildScrollView(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: (12 / 6.8) * SizeConfig.blockSizeVertical,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Your Current rating',
                        style: TextStyle(
                          fontSize: (13 / 4.1) * SizeConfig.blockSizeHorizontal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (5 / 6.8) * SizeConfig.blockSizeVertical,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '3.5',
                        style: TextStyle(
                          fontSize:(50 / 4.1) * SizeConfig.blockSizeHorizontal,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '★',
                        style: TextStyle(
                          fontSize: (30 / 4.1) * SizeConfig.blockSizeHorizontal,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (30 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  Ratingmeter(
                    rate: '5',
                    point: '12',
                    value: 16.0,
                  ),
                  Ratingmeter(
                    rate: '4',
                    point: '11',
                    value: 3.0,
                  ),
                  Ratingmeter(
                    rate: '1',
                    point: '51',
                    value: 11.0,
                  ),
                  Ratingmeter(
                    rate: '3',
                    point: '13',
                    value: 12.0,
                  ),
                  Ratingmeter(
                    rate: '2',
                    point: '05',
                    value: 10.0,
                  ),
                  SizedBox(
                    height: (15 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  MaterialButton(
                    child: Container(
                      height: (50 / 6.83) * SizeConfig.blockSizeVertical,
                      width: (250 / 4.1) * SizeConfig.blockSizeHorizontal,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF6224CF)),
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      child: Center(
                        child: Text(
                          'Read all reviews',
                          style: TextStyle(color: Color(0xFF6224CF)),
                        ),
                      ),
                    ),
                    onPressed: () {},
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.stars,
                          color: Color(0xFF6224CF),
                        ),
                        SizedBox(
                          width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '98',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: (14 / 4.1) * SizeConfig.blockSizeHorizontal),
                            ),
                            Text(
                              'People Reviewed',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: (11 / 4.1) * SizeConfig.blockSizeHorizontal),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Material(
                    elevation: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle,
                          color: Color(0xFF6224CF),
                        ),
                        SizedBox(
                          width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '128',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: (14 / 4.1) * SizeConfig.blockSizeHorizontal),
                            ),
                            Text(
                              'Task Completed',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: (11 / 4.1) * SizeConfig.blockSizeHorizontal),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Ratingmeter extends StatelessWidget {
  Ratingmeter({this.rate, this.point, this.value});
  final rate;
  final point;
  final value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left: (10 / 4.1) * SizeConfig.blockSizeHorizontal, right:(10 / 4.1) * SizeConfig.blockSizeHorizontal),
      child: Row(
        children: <Widget>[
          Text(
            rate,
            style: TextStyle(
              fontSize: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              color: Colors.white,
            ),
          ),
          Text(
            '★',
            style: TextStyle(
              fontSize: (18/ 4.1) * SizeConfig.blockSizeHorizontal,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                activeTrackColor: Colors.green,
                disabledActiveTrackColor: Color(0xFF5C2FA5),
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 0,
                ),
              ),
              child: Slider(
                onChanged: (val) {},
                max: 20,
                min: 0.0,
                value: value,
              ),
            ),
          ),
          Text(point,
              style: TextStyle(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
