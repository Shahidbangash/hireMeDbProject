import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hire_me/MyProfile.dart';
import 'package:hire_me/Provider/SPSignUp.dart';
import 'package:hire_me/sizeconfig.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Sseakerloginpage.dart';
import '../myhomeScreen.dart';

class SpLogin extends StatefulWidget {
  @override
  _SpLoginState createState() => _SpLoginState();
}

class _SpLoginState extends State<SpLogin> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  var email_text;
  var password_text;

  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();

  Future<Map<String, dynamic>> request_login() async {
    try {
      final response = await http.get(
          'http://192.168.36.241/testconnection/serviceprovider.php/?email_id=$email_text&password=$password_text');

      print(response.body);
      print(json.decode(response.body));
      print("The code we want to see is ");

      Map<String, dynamic> mapping = (json.decode(response.body));
      print("response code is");
      print(mapping["response_code"]);
      var statusCode = mapping["response_code"];

      print("requesting url is ");

      print(
          'http://192.168.36.241/testconnection/serviceprovider.php/?email_id=$email_text&password=$password_text');
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
                      await request_login();
                    }
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
                        child: Text('Are you a  sevice Seeker?'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SsLogin();
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
                            return SpSignup();
                          }));
                        },
                      ),
                    ),
                    SizedBox(
                      height: (130 / 6.8) * SizeConfig.blockSizeVertical,
                    ),
                    Text(
                      'By signing up. you are agree to our terms & condition',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                      ),
                    )
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
