import 'package:flutter/material.dart';
import 'package:hire_me/Bottombar.dart';
import 'package:hire_me/LandingPage.dart';
import 'Search.dart';
import 'sizeconfig.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homeScreeenState();
  }
}

class _homeScreeenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Color(0xFF6224CF),
      appBar: AppBar(
        title: const Text('Bottom App Bar'),
        backgroundColor: Color(0xFF6224CF),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xFF6224CF),
              child: DrawerHeader(
                child: UserAccountsDrawerHeader(
                  arrowColor: Color(0xFF6224CF),
                  accountName: Text('Shahid '),
                  accountEmail: Text('shaidbangash94@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.purple,
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
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //     '/home', (Route<dynamic> route) => false);

                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => landingPage()),
                    (Route<dynamic> route) => false);

                // Then close the drawer
//              Navigator.pop(context);
//              Navigator.popUntil(context,ModalRoute.withName('/loginPage'));
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6224CF),
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF6224CF),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 26,
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.all(10),
              iconSize: 26,
              icon: Icon(Icons.history),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 26,
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              iconSize: 26,
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  // delegate: CustomSearchDelegate(),
                );
              },
            ),
          ],
        ),
      ),

      // bottomNavigationBar: BottomAppBar(

      //   child: Row(

      //                       children: <Widget>[

      //                         IconButton(

      //                           iconSize: 20,

      //                           icon: Icon(Icons.notifications),

      //                           onPressed: () {},

      //                         ),

      //                         IconButton(

      //                           iconSize: 20,

      //                           icon: Icon(Icons.person),

      //                           onPressed: () {},

      //                         ),

      //                         IconButton(

      //                           iconSize: 20,

      //                           icon: Icon(Icons.notifications),

      //                           onPressed: () {},

      //                         ),

      //                       ],

      //                     ),

      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            (Text("data")),
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}

// }
