import 'package:flutter/material.dart';
import 'package:hire_me/afterlogin.dart';
import 'loginpage.dart';
import 'package:mysql1/mysql1.dart';
import 'dart:async';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/second': (context) => UserLoginPage(),
      },
      title: 'Hire_Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                    child: Text("Service Provider"),
                    onPressed: () async {
                     var settings = new ConnectionSettings(
                        host: '192.168.36.241',
                        port: 3306,
                        user: 'root',
                        password: 'root',
                        db: 'sakila'
                        );
                          try{
                        print('hello');
                        MySqlConnection connection = await MySqlConnection.connect(settings);
                        print('hello again');

                        print(connection.toString());
                        var results = await connection.query('select * from sakila.actor limit 1');
// Use the results:

                        for (var row in results) {
                          print('Name: ${row[0]}');
                          };
                      
                          }catch (exceptoin) {
                            print("exception ");
                            print(exceptoin.runtimeType.toString());
                            
                            // print(exception.toString());

                          }

                          
                      // var userId = 12;

                      // var conn = await MySqlConnection.connect(settings);
                      // print(conn.toString());
                      // var userId = 12;
                      // var results =
                          // await conn.execute('SELECT * FROM sakila.actor');

                      //print(results);
                      // results.forEach((Row row)=> print("Name : ${row[0]}"));
                      // print(results)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserLoginPage()));
                    }),
                RaisedButton(
                    child: Text("Service Seeker"),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AfterLogin(),
                          ),
                        );
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
