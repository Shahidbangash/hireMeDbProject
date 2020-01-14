import 'package:flutter/material.dart';
import 'sizeconfig.dart';

class viewoffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF6F8F9),
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('View Offer'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10.0),
                      leading: CircleAvatar(
                        child: Image.asset('images/p3.jpg'),
                        foregroundColor: Colors.black26,
                        radius: (30/4.1)*SizeConfig.blockSizeHorizontal,
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            'MilMaler',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: (18/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                          Text(
                            ' | Maler',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          Text(
                            '5.0 ★ ',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                          Text(
                            '(125)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: (10/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '15 km away',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    width: (330/4.1)*SizeConfig.blockSizeHorizontal,
                    color: Color(0xFFF6F6F6),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text:
                                'Lorem ipsum. or lipsum as it is\nsomtimes know,lorem sometimes\nipsum, or lipsum as it is somtimes\nknown lipsum as it is',
                            style: TextStyle(fontSize: (15/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                          ),
                          TextSpan(
                              text: ' view more',
                              style: TextStyle(color: Color(0xFF6224CF))),
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical,
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
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OfferButton(
                          colour: Color(0xFFFF9F9F9),
                          text: 'Send Message',
                          textColor: Colors.grey,
                          onpressed: (){},
                        ),
                        OfferButton(
                          colour: Color(0xFF6224CF),
                          text: 'Accept Offer',
                          textColor: Colors.white,
                          onpressed: (){},
                        ),
                      ],
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

class OfferButton extends StatelessWidget {
  OfferButton({this.text, this.textColor, this.colour, this.onpressed});
  final String text;
  final Color textColor;
  final Color colour;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        height: (40/6.83)*SizeConfig.blockSizeVertical,
        width: (150/4.1)*SizeConfig.blockSizeHorizontal,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: colour,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                topRight: Radius.circular(5.0))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
      onPressed: onpressed,
    );
  }
}

class Offer extends StatelessWidget {
  Offer({this.icon, this.type, this.text});
  final Icon icon;
  final String type;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width:(5/4.1)*SizeConfig.blockSizeHorizontal,),
          Text(
            type,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(width: (7/4.1)*SizeConfig.blockSizeHorizontal,),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
