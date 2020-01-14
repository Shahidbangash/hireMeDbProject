import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/Provider/SPactive.dart';
import 'package:http/http.dart';
import 'Provider/SPlogin.dart';
import 'Sseakerloginpage.dart';
import 'sizeconfig.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class Post {
//   final userId;
//   final name;

//   Post({this.userId, this.name});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(userId: json['id'], name: json['name']);
//   }
// }

class landingPage extends StatefulWidget {
  // Future<http.Response> fetchdata() {
  //   return http.get('http://galvanometric-decib.000webhostapp.com/user.php');
  // }

  // Future<Post> fetchdata() async {
  //   // try  http://galvanometric-decib.000webhostapp.com/user.php
  //   final response =
  //       await http.get('http://bangash123123.000webhostapp.com/index.php');

  //   print(response.body);
  //   if (response.statusCode == 200) {
  //     // If server returns an OK response, parse the JSON.
  //     // return Post.fromJson(json.decode(response.body));
  //   } else {
  //     // If that response was not OK, throw an error.
  //     throw Exception('Failed to load post');
  //   }
  // }

  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  final GlobalKey<ScaffoldState> scafoldState = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: scafoldState,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: (250 / 6.83) * SizeConfig.blockSizeVertical,
              color: Color(0xFF6224CF),
              child: Center(
                child: Text(
                  'Hire Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Museo',
                    fontWeight: FontWeight.bold,
                    fontSize: (80 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: (20 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Text(
              'YOUR LOCAL\nMARKETPLACE FOR HANDYMAN OFFERS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF727070),
                fontFamily: 'Kalam',
                fontWeight: FontWeight.bold,
                fontSize: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
            ),
            SizedBox(
              height: (20 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OfferButton(
                  colour: Color(0xFF6224CF),
                  text: 'Service Seeker',
                  textColor: Colors.white,
                  onpressed: () {
                    var ssLoginROute = Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SsLogin();
                    }));
                  },
                ),
                OfferButton(
                  colour: Colors.white,
                  text: 'Service Provider',
                  textColor: Color(0xFF6224CF),
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SpLogin();
                    }));
                  },
                ),
              ],
            )
          ],
        ),
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
        height: (40 / 6.83) * SizeConfig.blockSizeVertical,
        width: (150 / 4.1) * SizeConfig.blockSizeHorizontal,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF6224CF)),
            color: colour,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
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
