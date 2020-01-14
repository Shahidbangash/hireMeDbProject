import 'dart:async';

import 'package:flutter/material.dart';
// import 'Bookmark.dart';
import 'ChatBox.dart';
// import 'package:lesco/FAQ.dart';
import 'Notification.dart';
import 'Provider/Marketplace.dart';
import 'Provider/Offersent.dart';
import 'Provider/Payment.dart';
import 'Provider/ProfilePage.dart';
import 'Provider/Rating.dart';
import 'Provider/SPMyProfile.dart';
import 'Provider/SPReview.dart';
import 'Provider/SPSignUp.dart';
import 'Provider/SPlogin.dart';
import 'Provider/SPprofile.dart';
import 'Request.dart';
import 'Review.dart';
import 'SignUp.dart';
import 'Taskdetail.dart';
// import 'Terms.dart';
import 'Verification.dart';
import 'ViewOffer.dart';
// import 'aboutus.dart';
import 'sizeconfig.dart';

import 'Add.dart';
import 'Chat.dart';
import 'LandingPage.dart';
import 'MyProfile.dart';
import 'Profile.dart';
import 'YourPost.dart';
// import 'contactUs.dart';
// import 'loginPage.dart';
import 'Sseakerloginpage.dart';

void main() => runApp(MaterialApp(
      home: landingPage(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return landingPage();
  }
}
