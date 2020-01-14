import 'package:flutter/material.dart';
// import 'package:lesco/Bookmark.dart';
// import 'package:lesco/FAQ.dart';
import 'package:hire_me/MyProfile.dart';
import 'package:hire_me/Profile.dart';
import 'package:hire_me/Provider/SPBottombar.dart';
import 'package:hire_me/Provider/SPMyProfile.dart';
import 'package:hire_me/Provider/SPReview.dart';
// import 'package:lesco/Terms.dart';
import 'package:hire_me/YourPost.dart';
// import 'package:lesco/aboutus.dart';
// import 'package:lesco/contactUs.dart';
import 'package:hire_me/sizeconfig.dart';


class spprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SPBottomBar(value:5),
      ),
      backgroundColor: Color(0xffe6e6e6),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF6224CF),
        actions: <Widget>[
          MaterialButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Logout',
                style: TextStyle(
                    fontSize: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
                    color: Colors.white),
              )),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Material(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('images/p3.jpg'),
                          foregroundColor: Colors.black26,
                          radius: (40 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                        SizedBox(
                          width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Alan Walker',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    (18 / 4.1) * SizeConfig.blockSizeHorizontal,
                              ),
                            ),
                            SizedBox(
                              height: (5 / 6.83) * SizeConfig.blockSizeVertical,
                            ),
                            Text(
                              'CVR: 35345431',
                              style: TextStyle(
                                fontSize:
                                    (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    MaterialButton(
                      minWidth: 0.0,
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SPMyProfile();
                        }));
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.grade,
                color: Color(0xFF6224CF),
              ),
              text: 'Your review',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return spreview();
                }));
              },
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.mail,
                color: Color(0xFF6224CF),
              ),
              text: 'Contact us',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return contactUs();
                // }));
              },
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.account_box,
                color: Color(0xFF6224CF),
              ),
              text: 'About US',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return aboutUs();
                // }));
              },
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.view_headline,
                color: Color(0xFF6224CF),
              ),
              text: 'FAQ',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return faq();
                // }));
              },
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.content_paste,
                color: Color(0xFF6224CF),
              ),
              text: 'Terms & Conditons',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return terms();

                // }
                // ));
              },
            ),
          ],
        ),
      ),
    );
  }
}