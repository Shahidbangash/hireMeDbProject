import 'package:flutter/material.dart';
// import 'package:lesco/Bookmark.dart';
// import 'package:lesco/FAQ.dart';
import 'MyProfile.dart';
// import 'Terms.dart';
import 'YourPost.dart';
// import 'aboutus.dart';
// import 'contactUs.dart';
import 'sizeconfig.dart';

import 'Bottombar.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: BottomBar(value: 4),
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
                          backgroundImage: AssetImage('images/Profile.png'),
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
                              'Sachin Parekh',
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
                              '+92 903 335 6708',
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
                          return MyProfile();
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
                Icons.assignment,
                color: Color(0xFF6224CF),
              ),
              text: 'Your posts',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return mypost();
                }));
              },
            ),
            SizedBox(
              height: (2 / 6.83) * SizeConfig.blockSizeVertical,
            ),
            Option(
              leadingicon: Icon(
                Icons.grade,
                color: Color(0xFF6224CF),
              ),
              text: 'Saved',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return bookmark();
                  print('Bookmark was here');
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
                  print("contact us was here");
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
              text: 'About lesco',
              trailingicon: Icon(
                Icons.arrow_forward_ios,
                size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              ontap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return aboutUs();
                // }));
                print("Hi");
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
                  print('hello');
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
                // }));
                print("Terms");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  Option({this.text, this.leadingicon, this.trailingicon, this.ontap});

  String text;
  Icon leadingicon;
  Icon trailingicon;
  Function ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      child: ListTile(
        leading: leadingicon,
        title: Text(
          text,
          style: TextStyle(
            fontSize: (16 / 4.1) * SizeConfig.blockSizeHorizontal,
          ),
        ),
        trailing: trailingicon,
        onTap: ontap,
      ),
    );
  }
}
