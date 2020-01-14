import 'package:flutter/material.dart';
import 'package:hire_me/Sseakerloginpage.dart';
import 'MyProfile.dart';

import 'sizeconfig.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailAddressController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController repeatPassController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    var _currValue = 1;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6224CF),
          centerTitle: true,
          title: Text('Sign Up'),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
            key: _formkey,
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment(0, 0),
                    child: Text(
                      "Service Seaker Sign Up Form",
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          decorationThickness: 12),
                    )),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Enter your full name",
                        ),
                        validator: (value) {
                          return value.length == 0
                              ? "name must not be empty"
                              : null;
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: emailAddressController,
                    decoration: InputDecoration(
                      labelText: "Enter your email address",
                    ),
                    validator: (value) {
                      if (value.length == 0)
                        return "enter name ";
                      else
                        return null;
                    },
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: userNameController,
                      decoration: InputDecoration(
                        labelText: "Enter your userName",
                      ),
                      validator: (value) {
                        return value.length == 0
                            ? "UserName must not be empty"
                            : null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                      ),
                      validator: (value) {
                        return value.length == 0
                            ? "password must not be empty"
                            : null;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                      controller: repeatPassController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "repeat your password",
                      ),
                      validator: (value) {
                        if (passwordController.text != value) {
                          // print("password same");
                          return "Invalid password";
                        }
                        return null;
                      }),
                ),
                ButtonBar(
                  children: <Widget>[
                    MainButton(
                      text: "Sign up",

                      // Text:("Sgn up"),
                      onpressed: () {
                        if (_formkey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SsLogin()),
                          );
                        }
                      },
                    ),
                    Center(
                      // heightFactor: 12,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          child: Text("Already a member"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    'By signing up. you are agree to our terms & condition',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
