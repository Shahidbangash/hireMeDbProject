import 'package:flutter/material.dart';
import 'sizeconfig.dart';

class active extends StatelessWidget {
  active({this.type, this.category, this.location, this.color, this.value});
  
  final String type;
  final String category;
  final String location;
  final Color color;
  final bool value;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Awaiting approval from Admin',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '27-08-19 kl 15;15',
                          style: TextStyle(color: Colors.grey, fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,),
                        ),
                        Text(
                          type,
                          style: TextStyle(color: color, fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Color(0xFFF6F6F6),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                      child: Text(
                        'Lorem ipsum, or lipsum as it is\nsomtimes known, Lorem ipsum, or\n lipsum as it is sometimes known.',
                        style: TextStyle(fontSize: (16/4.1)*SizeConfig.blockSizeHorizontal,),
                      ),
                    ),
                  ),
                  Texter(
                    icon: Icon(Icons.search, color: Colors.grey),
                    leading: 'Catergory',
                    title: category,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 20.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Texter(
                    icon: Icon(Icons.location_on, color: Colors.grey),
                    leading: 'Location',
                    title: location,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 20.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  
                  // if(value ==3)Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Card(
                  //       elevation: 1,
                  //       borderOnForeground: true,
                  //       color: Color(0xFFF6F6F6),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(10.0),
                  //         child: Center(
                  //             child: Text(
                  //           'View offers(4)',
                  //           style: TextStyle(
                  //             color: Colors.grey,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         )),
                  //       )),
                  // )
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Texter extends StatelessWidget {
  Texter({this.icon, this.leading, this.title});

  Icon icon;
  String leading;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(
            width: (5/4.1)*SizeConfig.blockSizeHorizontal,
          ),
          Text(
            leading,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width:(8/4.1)*SizeConfig.blockSizeHorizontal,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}
