import 'package:flutter/material.dart';
import 'package:hire_me/ViewOffer.dart';
import 'package:hire_me/sizeconfig.dart';

class offersent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF6F8F9),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('27-08-19 kl 15:15',
                            style: TextStyle(color: Colors.grey, fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,)),
                        Text('sent',
                            style: TextStyle(color: Colors.grey, fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,))
                      ],
                    ),
                  ),
                  Container(
                    width: (330/4.1)*SizeConfig.blockSizeHorizontal,
                    color: Color(0xFFF6F6F6),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Lorem ipsum, or lipsum as it is',
                        style: TextStyle(fontSize: (15/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (15/6.83)*SizeConfig.blockSizeVertical
                  ),
                  Offer(
                    icon: Icon(Icons.settings, color: Colors.grey),
                    text: 'Interior painting',
                    type: 'Services',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical
                  ),
                  Offer(
                    icon: Icon(Icons.bookmark, color: Colors.grey),
                    text: '456 kr.',
                    type: 'Price',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical,
                  ),
                  Offer(
                    icon: Icon(Icons.calendar_view_day, color: Colors.grey),
                    text: '27-08-2019 kl 16:50',
                    type: 'When',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      child: Container(
                        height: (40/6.83)*SizeConfig.blockSizeVertical,
                        width: SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Color(0xFFFF9F9F9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topRight: Radius.circular(5.0))),
                        child: Center(
                          child: Text(
                            'Withdraw Offer',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
