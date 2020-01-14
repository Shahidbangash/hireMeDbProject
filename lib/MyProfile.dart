import 'package:flutter/material.dart';
import 'sizeconfig.dart';

class MyProfile extends StatelessWidget {
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
                        // child: Image.asset('images/Profile.png'),
                        foregroundColor: Colors.black26,
                        radius: (50 / 4.1) * SizeConfig.blockSizeHorizontal,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFF6224CF),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                        foregroundColor: Colors.black26,
                        radius: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                  Container(
                    height: (100 / 6.83) * SizeConfig.blockSizeVertical,
                    width: (200 / 4.1) * SizeConfig.blockSizeHorizontal,
                    //alignment: Alignment.bottomLeft,
                    child: TextFormField(
                      initialValue: 'Sachin Parekh',
                      decoration: InputDecoration(labelText: 'Your name'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (20 / 6.83) * SizeConfig.blockSizeVertical,
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
                text: '2665 Vallenbaek',
                onchanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: (60 / 6.83) * SizeConfig.blockSizeVertical,
                    width: (150 / 4.1) * SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: '44000',
                      decoration: InputDecoration(
                          //border: InputBorder.none,
                          icon:
                              Icon(Icons.assignment, color: Color(0xFF6224CF)),
                          labelText: 'Zip Code'),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    height: (60 / 6.83) * SizeConfig.blockSizeVertical,
                    width: (150 / 4.1) * SizeConfig.blockSizeHorizontal,
                    child: TextFormField(
                      initialValue: '0000',
                      decoration: InputDecoration(
                          //border: InputBorder.none,
                          icon: Icon(Icons.location_city,
                              color: Color(0xFF6224CF)),
                          labelText: 'City'),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: (30 / 6.83) * SizeConfig.blockSizeVertical,
              ),
              MainButton(
                text: 'Update Info',
                onpressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  MainButton({this.text, this.onpressed});

  final String text;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          elevation: 140.0,
          onPressed: onpressed,
          child: Container(
            width: (250 / 4.1) * SizeConfig.blockSizeHorizontal,
            height: (40 / 6.83) * SizeConfig.blockSizeVertical,
            child: Material(
              color: Color(0xFF6224CF),
              borderRadius: BorderRadius.circular(30),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: (15 / 4.1) * SizeConfig.blockSizeHorizontal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MyTextFormField extends StatelessWidget {
  Icon icon;
  String labelText;
  Function validator;
  final TextEditingController controller;

  MyTextFormField.Controller({
    this.controller,
    this.labelText,
    this.validator,
  });

  MyTextFormField({this.icon, this.labelText, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(width: 10.0),
            )));
  }

  // Controlle
}

// class TextFormDesign extends StatelessWidget {
// Decoration decoration = OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10.0),
//         borderSide: BorderSide(width: 10.0)) as Decoration;

//   @override
//   Widget build(BuildContext context) {
//     return  OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10.0),
//         borderSide: BorderSide(width: 10.0)) as Decoration;
//   }
// }

class TextForm extends StatelessWidget {
  TextForm({this.icon, this.label, this.text, this.onchanged});

  Icon icon;
  String label;
  String text;
  Function onchanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: (60 / 6.83) * SizeConfig.blockSizeVertical,
          width: (350 / 4.1) * SizeConfig.blockSizeHorizontal,
          child: TextFormField(
            initialValue: text,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: icon,
                labelText: label,
                labelStyle: TextStyle(fontSize: 13.0)),
            onChanged: onchanged,
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}
