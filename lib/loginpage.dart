
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'afterlogin.dart';
import 'forgotemailpage.dart';
import 'signuppage.dart';

class UserLoginPage extends StatefulWidget {
  
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserLoginPageState();
  }
}

class _UserLoginPageState extends State<UserLoginPage> {
  
  // String org;
  // String email;
  // String password;
  // String globalURL;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          children: <Widget>[
            new Center(
              child: Form(
                key: _formKey,
//                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child:
                          Text('https://benchstaff-dev.herokuapp.com/'),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        validator: (value) {
                          bool emailValid =
                              RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                          if (value.isEmpty) {
                            return 'Email must not be empty';
                          } else if (emailValid == false)
                            return 'Enter Valid Email';
                          else
                            return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(Icons.email), hintText: 'email-address'),
                        // controller: _emailController,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.person_pin), hintText: 'password'),
                        // controller: _passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password must not be empty';
                          } else
                            return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: RaisedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => AfterLogin(),
                              ),
                            );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: <Widget>[
                          Text('New on this Team?'),
                          FlatButton(
                            child: Text('Join In'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignUpPage("89"),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ForgotEmail("89"),
                              ),
                            );
                          },
                          child: Text('Forgot Password?')),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  
  }



class UserClass2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserStateClass2();
  }

   
}

class _UserStateClass2 extends State<UserClass2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text("Dart"),
    );
  }

}
