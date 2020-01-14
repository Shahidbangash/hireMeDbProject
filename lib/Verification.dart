import 'package:flutter/material.dart';
import 'Add.dart';
import 'MyProfile.dart';
import 'Provider/ProfilePage.dart';
import 'Provider/SPprofile.dart';
import 'sizeconfig.dart';

class verification extends StatelessWidget {

  
  final formstate =  GlobalKey<FormState>();

  // const verification({Key key, this.value}) : super(key: key);
  // final int value;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){

          },
                  child: ListView(
                    key: formstate,
                    children: <Widget>[
                     Form(
                    
                    ),
                    ],
                      

                  ),
        ),
          
        ),
      
    );
  }
}
