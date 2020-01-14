import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hire_me/afterlogin.dart';
import 'package:hire_me/signuppage.dart';
import 'package:http/http.dart' as http;
import 'myhomeScreen.dart';
import 'MyProfile.dart';
import 'package:json_annotation/json_annotation.dart';
// import 'package:analyzer/context/context_root.dart';
import 'dart:convert';
import 'SignUp.dart';
import 'sizeconfig.dart';
import 'Provider/SPlogin.dart';
// import '';

class PrimaryColor {
  static Color mainColor = new Color(0xFF6224CF);
}

class SsLogin extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

// class Post {
//   var name;
//   var mypassword;
//   var city_id;

//   Post({this.city_id, this.mypassword, this.name});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       name: json['name'],
//       // email: json['Email_Id'],
//       mypassword: json['password'],
//       city_id: json['city_id'],
//       // org: json['org'],
//     );
//   }

//   Future<Post> createPost(String url, {Map body}) async {
//     // print("Requesting: " + url);
//     // print("Params: " + body.toString());

//     return http.post(url, body: body).then((http.Response response) {
//       final int statusCode1 = response.statusCode;
//       if (statusCode1 == 201) {
//         print('Succesful');
//         return Post.fromJson(Json.decode(response.body));
//       } else {

//         print('Unhandled Status Code: ' + statusCode1.toString());
//         print("Response Body: " + response.body.toString());
//       }

//       return Post.fromJson(json.decode(response.body));
//     });
//   }
//      Map toMap() {
//     var map = new Map<String, dynamic>();
//     map["name"] = name;
//     // map["email"] = emailaddress;
//     map["password"] = mypassword;
//     map["city_id"] = city_id;
//     // map["org"] = org;
//     return map;
//   }
// }
class Post {
  final email_id;
  final password;
  final String response_code;
  final String response_message;

  Post(
      {this.email_id,
      this.password,
      this.response_code,
      this.response_message});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      email_id: json['Email_Id'],
      password: json['password'],
      response_code: json['response_code'],
      response_message: json['response_desc'],
    );
  }
}

class _LoginState extends State<SsLogin> {
  final GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  var email_text;
  var password_text;
  var name = 'shahid';
  var mypassword = 'pakistan';
  var city_id = '33';

  final _formKey = GlobalKey<FormState>();

  updateTestRecord() async {
    var url = "http://localhost/testconnection/update.php";
    var res = http.post(url, body: {
      'username': "Shahid KHan",
      'Email_Id': "shaihdkhan@gmail.com",
      'city_id': " 44"
    });

    print(res.toString());
  }

  Future<Map<String, dynamic>> getTestData() async {
    try {
      final response = await http.get(
          'http://192.168.36.241/testconnection/serviceseakerlogin.php/?email_id=$email_text&password=$password_text');

      print(response.body);
      print(json.decode(response.body));
      print("The code we want to see is ");

      Map<String, dynamic> mapping = (json.decode(response.body));
      print("response code is");
      print(mapping["response_code"]);
      var statusCode = mapping["response_code"];

      print("requesting url is ");

      print(
          'http://192.168.36.241/testconnection/serviceseakerlogin.php/?email_id=$email_text&password=$password_text');

      if (statusCode == 200) {
        print("OKay");
        await Future.delayed(new Duration(seconds: 3));

        scafoldkey.currentState.showSnackBar(new SnackBar(
          content: new Text("Login Successful"),
        ));
        await Future.delayed(new Duration(seconds: 4));

        // scafoldState.currentState.sh
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }));

        return (json.decode(response.body));
      } else if (statusCode == 201) {
        print("Not found");
        await Future.delayed(new Duration(seconds: 3));

        scafoldkey.currentState.showSnackBar(new SnackBar(
          content: new Text("Login not Succesfull"),
        ));
      } else {
        print("Something went wrong");
        // If that response was not OK, throw an error.
        // throw Exception('Failed to load post');
      }
    } catch (SocketException) {
      print(SocketException.toString());
    }
  }

  bool emailValidator(String value) {
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp emailRegex = new RegExp(pattern);

    print(emailRegex.hasMatch(value));

    return emailRegex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    updateTestRecord();
    return Scaffold(
      key: scafoldkey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  height: (120 / 6.83) * SizeConfig.blockSizeVertical,
                  color: Color(0xFF6224CF),
                  child: Center(
                    child: Text(
                      'Hire Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Museo',
                        fontWeight: FontWeight.bold,
                        fontSize: (70 / 4.1) * SizeConfig.blockSizeHorizontal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: email,

                    decoration: InputDecoration(
                        labelText: 'Enter Email',
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 10.0),
                        )),
                    // icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (emailValidator(value) == false) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Enter password',
                        icon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 10.0),
                        )),
                    keyboardType: TextInputType.emailAddress,
                    controller: password,
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password must not be empty';
                      } else if (value.length < 8) {
                        return "Password must be at least 8 digit";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: (20 / 6.8) * SizeConfig.blockSizeVertical,
                ),
                MainButton(
                  text: 'Login',
                  onpressed: () async {
                    if (_formKey.currentState.validate()) {
                      email_text = email.text;
                      password_text = password.text;

                      FocusScope.of(context).requestFocus(FocusNode());
                      // email.clear();
                      print("Requesting paramter");
                      print(email.text);
                      print(password.text);

                      var data = await getTestData();
                      print(data);
                    }
                    // }
                  },
                ),
                Container(
                    child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: FlatButton(
                        textColor: PrimaryColor.mainColor,
                        child: Text('Are you a  sevice provider?'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SpLogin();
                          }));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: FlatButton(
                        child: Text(
                          'Sign in or Sign up to continue',
                        ),
                        // textColor: ,
                        textColor: Color(0xFF6224CF),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Signup();
                          }));
                        },
                      ),
                    ),

                    // myTextFormField
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
