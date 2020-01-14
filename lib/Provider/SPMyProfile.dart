import 'package:flutter/material.dart';
import 'package:hire_me/MyProfile.dart';
import 'package:hire_me/sizeconfig.dart';

class SPMyProfile extends StatelessWidget {
  Radius radius = Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        centerTitle: true,
        title: Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset('images/Profile.png'),
                        foregroundColor: Colors.black26,
                        radius: (50/4.1)*SizeConfig.blockSizeHorizontal,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFF6224CF),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: (15/4.1)*SizeConfig.blockSizeHorizontal,
                        ),
                        foregroundColor: Colors.black26,
                        radius: (15/4.1)*SizeConfig.blockSizeHorizontal,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (20/4.1)*SizeConfig.blockSizeHorizontal,
                  ),
                  Container(
                    height: (100/6.83)*SizeConfig.blockSizeVertical,
                    width: (200/4.1)*SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: 'Company name here',
                      decoration: InputDecoration(labelText: 'Company name'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (20/6.83)*SizeConfig.blockSizeVertical,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(0xFF6224CF),
                    radius: (12/4.1)*SizeConfig.blockSizeHorizontal,
                    child: Text(
                      'CVR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: (10/4.1)*SizeConfig.blockSizeHorizontal,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (10/4.1)*SizeConfig.blockSizeHorizontal,
                  ),
                  Container(
                    height: (60/6.83)*SizeConfig.blockSizeVertical,
                    width: (280/4.1)*SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: '53563625',
                      decoration: InputDecoration(
                          border: InputBorder.none, labelText: 'CVR number'),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: (63/6.83)*SizeConfig.blockSizeVertical,
                    width: (200/4.1)*SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: 'Profession here',
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.person, color: Color(0xFF6224CF)),
                          labelText: 'Profession'),
                      onChanged: (value) {},
                    ),
                  ),
                  DropdownButton(
                    
                    icon: Icon(Icons.keyboard_arrow_down),
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              TextForm(
                icon: Icon(Icons.mail, color: Color(0xFF6224CF)),
                label: 'Enter Email ID',
                text: 'sachinparekh@gmail.com',
                onchanged: (value) {},
              ),
              TextForm(
                icon: Icon(Icons.phone_iphone, color: Color(0xFF6224CF)),
                label: 'Mobile Number',
                text: '+91 903 335 76708',
                onchanged: (value) {},
              ),
              TextForm(
                icon: Icon(Icons.location_on, color: Color(0xFF6224CF)),
                label: 'Street Address',
                text: 'Amalieparken 10,st 3',
                onchanged: (value) {},
              ),
              TextForm(
                icon: Icon(Icons.location_on, color: Color(0xFF6224CF)),
                label: 'Floor or door no. (optional)',
                text: '2665 Vallensbaek',
                onchanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: (100/6.83)*SizeConfig.blockSizeVertical,
                    width: (150/4.1)*SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: '44000',
                      decoration: InputDecoration(
                          icon:
                              Icon(Icons.assignment, color: Color(0xFF6224CF)),
                          labelText: 'Zip Code'),
                      onChanged: (value) {},
                    ),
                  ),
                 
                  Container(
                    height: (100/6.83)*SizeConfig.blockSizeVertical,
                    width: (150/4.1)*SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: '0000',
                      decoration: InputDecoration(
                          icon: Icon(Icons.location_city,
                              color: Color(0xFF6224CF)),
                          labelText: 'City'),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              Container(
                width: (400/4.1)*SizeConfig.blockSizeHorizontal,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.only(
                    topRight: radius,
                    topLeft: radius,
                    bottomLeft: radius,
                    bottomRight: radius,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem ipsum. or lipsum as it is somtimes know, lorem sometimes ipsum, or lipsum as it is somtimes known lipsum as it is\n\n',
                    style: TextStyle(fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.grey),

                  ),
                ),
              ),
              SizedBox(
                height: (20.0/6.83)*SizeConfig.blockSizeVertical,
              ),
              MainButton(
                text: 'Update Info',
                onpressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
