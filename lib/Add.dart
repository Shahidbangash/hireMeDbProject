import 'package:flutter/material.dart';
import 'Bottombar.dart';
import 'MyProfile.dart';
import 'Profile.dart';
import 'sizeconfig.dart';

class add extends StatelessWidget {
  Radius radius = Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    print(SizeConfig.blockSizeVertical);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: BottomBar(),
      ),
      backgroundColor: Color(0xFFF4F4F4),
      appBar: AppBar(
        backgroundColor: Color(0xFF6224CF),
        title: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: (25 / 6.83) * SizeConfig.blockSizeHorizontal,
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'location for services',
                    style: TextStyle(
                        fontSize: (18 / 6.83) * SizeConfig.blockSizeHorizontal),
                  ),
                  Text(
                    'Mumbia, Bandra',
                    style: TextStyle(
                        fontSize: (28 / 6.83) * SizeConfig.blockSizeHorizontal),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: (30 / 6.83) * SizeConfig.blockSizeHorizontal,
                  ),
                  Text(
                    ' Select Category',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: (12 / 6.83) * SizeConfig.blockSizeVertical,
              ),
              Container(
                height: (100 / 6.83) * SizeConfig.blockSizeVertical,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: Category(
                        image: 'icon1',
                        category: 'Plumber',
                        onpressed: () {},
                      ),
                    ),
                    Category(
                      image: 'icon2',
                      category: 'Computer',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon3',
                      category: 'Electronic',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon4',
                      category: 'Appliance',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon5',
                      category: 'Cars & Bikes',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon6',
                      category: 'Plumber',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon7',
                      category: 'Plumber',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon8',
                      category: 'Plumber',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon9',
                      category: 'Plumber',
                      onpressed: () {},
                    ),
                    Category(
                      image: 'icon10',
                      category: 'Plumber',
                      onpressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.description,
                    color: Colors.grey,
                    size: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  SizedBox(
                    width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: (350 / 4.1) * SizeConfig.blockSizeHorizontal,
                    height: (120 / 6.83) * SizeConfig.blockSizeVertical,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: radius,
                        topLeft: radius,
                        bottomLeft: radius,
                        bottomRight: radius,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Please, describe the job',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  (11 / 4.1) * SizeConfig.blockSizeHorizontal)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (10 / 6.83) * SizeConfig.blockSizeVertical,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                    size: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  SizedBox(
                    width: (10 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  Text(
                    'Media',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
              ),
              Card(
                elevation: 3.0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.camera_alt, color: Colors.grey),
                      Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                (11 / 4.1) * SizeConfig.blockSizeHorizontal),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (20 / 6.83) * SizeConfig.blockSizeVertical,
              ),
              MainButton(
                text: 'Post Task',
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return profile();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.onpressed, this.image, this.category});

  final String image;
  final String category;
  Function onpressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 0,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Image.asset(
              'images/$image.png',
              height: (60 / 4.1) * SizeConfig.blockSizeHorizontal,
            ),
          ),
          Text(
            category,
            style: TextStyle(
                fontSize: (11 / 4.1) * SizeConfig.blockSizeHorizontal,
                color: Colors.grey),
          )
        ],
      ),
      onPressed: onpressed,
    );
  }
}
