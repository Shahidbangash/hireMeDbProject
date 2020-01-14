import 'package:flutter/material.dart';
import 'Offersent.dart';
import 'SPBottombar.dart';
import 'SPactive.dart';
import 'package:hire_me/sizeconfig.dart';

class marketplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: SPBottomBar(value:2),
        appBar: AppBar(
          backgroundColor: Color(0xFF6224CF),
          title: Text('Marketplace'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Active',
                  style: TextStyle(fontSize: (15/4.1)*SizeConfig.blockSizeHorizontal,),
                ),
              ),
              Text('Offers Sent'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            spactive(),
            offersent(),
          ],
        ),
      ),
    );
  }
}
