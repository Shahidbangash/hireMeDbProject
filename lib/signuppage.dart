import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
//    ignore: non_constant_identifier_names
  final String org;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
                  child: Text('www.benchstaff.com/' + org),
                  margin: EdgeInsets.all(10),
                ),
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
                  child: RaisedButton(
                      child: Text('Signup'),
                      onPressed: () async {
                        Post post = new Post(
                            name: fullName,
                            email: email,
                            password: password,
                            org: org);
                        Post p = await post.createPost(
                            'https://benchstaff-dev.herokuapp.com/user/register',
                            body: post.toMap());
//                      Future<http.
                      }),
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
                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage(),),);
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

class Post {
  final String name;
  final String email;
  final String password;
  final String org;

  Post({this.name, this.email, this.password, this.org});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      org: json['org'],
    );
  }

  Future<Post> createPost(String url, {Map body}) async {
    print("Requesting: " + url);
    print("Params: " + body.toString());

    return http.post(url, body: body).then((http.Response response) {
      final int statusCode1 = response.statusCode;
      if (statusCode1 == 201) {
        print('Succesful');
        return Post.fromJson(json.decode(response.body));
      } else if (statusCode1 == 500) {
        print('Status Code :' + statusCode1.toString());
        print('parameters :' + response.body.toString());
//      throw Exception('Status Code Exception');
        print('User not created ');
      } else if (statusCode1 == 206) {
        throw Exception(" Status Code is 206");
        print('user not Created ');
      } else {
        //throw new Exception('Failed');
//    print('Failed');
        print('Unhandled Status Code: ' + statusCode1.toString());
        print("Response Body: " + response.body.toString());
      }

      return Post.fromJson(json.decode(response.body));
    });
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = name;
    map["email"] = email;
    map["password"] = password;
    map["org"] = org;

    return map;
  }
}
