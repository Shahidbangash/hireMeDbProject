import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//var drawer = new Drawer();

class AfterLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AfterLogin();
  }
}

class _AfterLogin extends State<AfterLogin> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
      ),
      body: Center(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text('Shahid '),
                  accountEmail: Text('shaidbangash94@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/250?image=9'),
//                child: Image.network('https://picsum.photos/250?image=9'),
                  ),
                ),
//                margin: EdgeInsets.all(10),
              ),
              padding: EdgeInsets.all(10),
            ),
//            decoration: BoxDecoration(
//              color: Colors.blue,
//            ),
//          ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // final prefs = await SharedPreferences.getInstance();
                // prefs.setBool('loggedIn', false);
                // Update the state of the app
                // ...
//              Navigator.of(context).pushAndRemoveUntil('/loginPage',(Route<dynamic> route)) => false
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/loginPage', (Route<dynamic> route) => false);

                // Then close the drawer
//              Navigator.pop(context);
//              Navigator.popUntil(context,ModalRoute.withName('/loginPage'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
