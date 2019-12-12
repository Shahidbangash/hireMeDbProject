import 'package:flutter/material.dart';

class ForgotEmail extends StatefulWidget {
  String _teamName;

  ForgotEmail(this._teamName);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ForgotEmailState();
  }
}

class _ForgotEmailState extends State<ForgotEmail> {
  // String _teamUrl;

  _ForgotEmailState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child: Text("Forgot Password")
            ,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'email-address'),
              onFieldSubmitted: (value) {},
            ),
            RaisedButton(
              child: Text('Submit Request'),
              onPressed: () {},
            ),
            Row(
              children: <Widget>[
                Text('Already a member?'),
                FlatButton(
                  child: Text('Sign In'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
