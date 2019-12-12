
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
//    ignore: non_constant_identifier_names
  final String org;

  @override
  State<StatefulWidget> createState() {
    return _SignUpPageState(org);
  }

  SignUpPage(this.org);
}

class _SignUpPageState extends State<SignUpPage> {
  String fullName;
  String email;
  String password;
  String confirmPassword;
  String org;

  _SignUpPageState(this.org);

  @override
  Widget build(BuildContext context) {
    var raisedButton = RaisedButton(
                      child: Text('Signup'),
                      onPressed: () async {
         
                      });
    return new Scaffold(
      appBar: AppBar(
        title: Text('benchstaff'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: TextField(
                    onChanged: (value) {
                      fullName = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'full name',
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'email Address',
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: new TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'password',
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: TextField(
                    onChanged: (value) {
                      confirmPassword = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'confirmpassword',
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  child: raisedButton,
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text('Already a member?'),
              FlatButton(
                child: Text('Sign In'),
                colorBrightness: Brightness.dark,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
