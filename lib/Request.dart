import 'package:flutter/material.dart';
import 'Bottombar.dart';
import 'sizeconfig.dart';

import 'InProgress.dart';

class requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: BottomBar(value:1),
        ),
        backgroundColor: Color(0xffe6e6e6),
        appBar: AppBar(
          title: Text('Status'),
          backgroundColor: Color(0xFF6224CF),
          actions: <Widget>[
            MaterialButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Icon(Icons.search,color: Colors.white,),
                    ),
              ),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'In Progress',
                  style: TextStyle(
                    fontSize: 15.0
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Completed',
                  style: TextStyle(
                    fontSize: 15.0
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            progress(status: 'In progress',),
            progress(status: 'Completed',),
          ],
        ),
      ),
    );
  }
}
