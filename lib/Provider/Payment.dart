import 'package:flutter/material.dart';
import 'package:hire_me/MyProfile.dart';
import 'package:hire_me/sizeconfig.dart';

class payment extends StatelessWidget {
  Radius radius = Radius.circular(5);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: (10/6.83)*SizeConfig.blockSizeVertical,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Why join LESCO?',
                    style: TextStyle(fontSize: (23/4.1)*SizeConfig.blockSizeHorizontal,),
                  ),
                ],
              ),
              SizedBox(
                height:(20/6.8)*SizeConfig.blockSizeVertical,
              ),
              WhyLesco(
                text: '30 days free trail, cancel anytime with 1 click',
              ),
              SizedBox(
                height:(10/6.83)*SizeConfig.blockSizeVertical,
              ),
              WhyLesco(
                text: 'Brand your business in the local community',
              ),
              SizedBox(
                height: (10/6.83)*SizeConfig.blockSizeVertical,
              ),
              WhyLesco(text: 'Gather trsutworthy reviews from customers'),
              SizedBox(
                height: (20/6.83)*SizeConfig.blockSizeVertical,
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  width: (400/4.1)*SizeConfig.blockSizeHorizontal,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.only(
                      topRight: radius,
                      topLeft: radius,
                      bottomLeft: radius,
                      bottomRight: radius,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Monthly subscription',
                            ),
                            Text(
                              '379 kr.',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: (20/6.83)*SizeConfig.blockSizeVertical,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Next payment',
                            ),
                            Text(
                              '27-09-19',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: (20/6.83)*SizeConfig.blockSizeVertical,
              ),
              Text(
                'Credit Card',
                style: TextStyle(fontSize: (17/4.1)*SizeConfig.blockSizeHorizontal,),
              ),
              SizedBox(
                height: (10/6.83)*SizeConfig.blockSizeVertical,
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  width: (400/4.1)*SizeConfig.blockSizeHorizontal,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      topRight: radius,
                      topLeft: radius,
                      bottomLeft: radius,
                      bottomRight: radius,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 8.0, top: 9.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/card-number.png',
                              height: (10/6.83)*SizeConfig.blockSizeVertical,
                            ),
                            SizedBox(
                              width: (10/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                            Container(
                              width: (250/4.1)*SizeConfig.blockSizeHorizontal,
                              height: (20/6.83)*SizeConfig.blockSizeVertical,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                        fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                                    border: InputBorder.none,
                                    labelText: 'Card Number'),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 8.0, top: 9.0, bottom: 9.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/mm-yy.png',
                              height: (13/6.83)*SizeConfig.blockSizeVertical,
                            ),
                            SizedBox(
                              width: (10/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                            Container(
                              width: (150/4.1)*SizeConfig.blockSizeHorizontal,
                              height: (20/6.83)*SizeConfig.blockSizeVertical,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                        fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                                    border: InputBorder.none,
                                    labelText: 'MM/YY'),
                                onChanged: (value) {},
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Image.asset(
                              'images/CVV.png',
                              height: (13/6.83)*SizeConfig.blockSizeVertical,
                            ),
                            SizedBox(
                              width: (13/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                            Container(
                              width: (140/4.1)*SizeConfig.blockSizeHorizontal,
                              height: (20/6.83)*SizeConfig.blockSizeVertical,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                        fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                                    border: InputBorder.none,
                                    labelText: 'CVC'),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (30/6.83)*SizeConfig.blockSizeVertical,
              ),
              MainButton(
                text: 'Sign up',
                onpressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WhyLesco extends StatelessWidget {
  WhyLesco({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset('images/green-active.png', height: (13/6.83)*SizeConfig.blockSizeVertical,),
        SizedBox(
          width: (20/4.1)*SizeConfig.blockSizeHorizontal,
        ),
        Text(text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
            ))
      ],
    );
  }
}
