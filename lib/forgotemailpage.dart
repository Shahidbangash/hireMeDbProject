import 'package:flutter/material.dart';

class ForgotEmail extends StatefulWidget {
  

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
    return new Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child: Text("Forgot Password"  )
            
            ,margin: EdgeInsets.all(10),
            ),
            Container(
              child: TextFormField(
                
                decoration: InputDecoration(hintText: 'email-address'),
                onFieldSubmitted: (value) {},
              ),
              margin: EdgeInsets.all(10),
            ),
            Container(
              child: RaisedButton(
                child: Text('Submit Request'),
                onPressed: () {},
              ),
              margin: EdgeInsets.all(10),
              height: 29,
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
