import 'package:flutter/material.dart';
import 'Bottombar.dart';
import 'sizeconfig.dart';
import 'Posts.dart';

class mypost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
          child: Scaffold(
            bottomNavigationBar: BottomBar(),
        appBar: AppBar(
          backgroundColor: Color(0xFF6224CF),
          centerTitle: true,
          title: Text('Your posts'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Active',
                style: TextStyle(
                  fontSize: (15/4.1)*SizeConfig.blockSizeHorizontal,
                ),
                ),
              ),
              Text('Pending'),
              Text('Inactive'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            active(
              type: 'Active',
              color: Colors.green,
              category: 'Painter',
              location: 'Vallensbaek',
              value: true,
            ),
            active(
              type: 'Pending',
              color: Colors.grey,
              category: 'Beauty',
              location: 'Vallensbaek',
              value: false,
            ),
            active(
              type: 'Unapproved',
              color: Colors.red,
              category: 'Maler',
              location: 'Vallensbaek',
              value: false,
            ),

          ],
        ),
        
      ),
    );
  }
}