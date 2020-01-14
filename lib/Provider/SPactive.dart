import 'package:flutter/material.dart';
import 'package:hire_me/ViewOffer.dart';
import 'package:hire_me/sizeconfig.dart';

class spactive extends StatelessWidget {
  Radius radius = Radius.circular(10);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Offer',
                  style: TextStyle(fontSize: (20/4.1)*SizeConfig.blockSizeHorizontal, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Row(
                  children: <Widget>[
                    Image.asset(
                      'images/services.png',
                      height: (20/6.83)*SizeConfig.blockSizeVertical,
                      width: (20/4.1)*SizeConfig.blockSizeHorizontal,
                    ),
                    SizedBox(
                      width: (20/4.1)*SizeConfig.blockSizeHorizontal,
                    ),
                    Text(
                      'Select Service',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                     ],
                ),
                   
                    DropdownButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ShowdialogOffer(
                image: 'price',
                label: 'Price in kr. for completing the task',
                onchanged: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ShowdialogOffer(
                image: 'gray-date-picker',
                label: 'Date for completing the task',
                onchanged: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  width: (40/4.1)*SizeConfig.blockSizeHorizontal,
                  decoration: BoxDecoration(
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
                      'Comments for the task or offer\t\n(required)\n\n',
                      style: TextStyle(fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Button(
                    colour: Color(0xFFFF9F9F9),
                    text: 'Cancel',
                    textColor: Colors.grey,
                    onpressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  
                  Button(
                    colour: Color(0xFF6224CF),
                    text: 'Send',
                    textColor: Colors.white,
                    onpressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'New task requests',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10.0),
                      leading: CircleAvatar(
                        child: Image.asset('images/p3.jpg'),
                        foregroundColor: Colors.black26,
                        radius: (30/4.1)*SizeConfig.blockSizeHorizontal,
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            'MilMaler',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:(18/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                          Text(
                            ' | Maler',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        '15 km away',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: (12/4.1)*SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      trailing: Icon(
                        Icons.message,
                        color: Color(0xFF6224CF),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    width: (330/4.1)*SizeConfig.blockSizeHorizontal,
                    color: Color(0xFFF6F6F6),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Lorem ipsum, or lipsum as it is',
                        style: TextStyle(fontSize: (15/4.1)*SizeConfig.blockSizeHorizontal, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (15/6.83)*SizeConfig.blockSizeVertical,
                  ),
                  Offer(
                    icon: Icon(Icons.search, color: Colors.grey),
                    text: 'Painter',
                    type: 'Category',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical,
                  ),
                  Offer(
                    icon: Icon(Icons.location_on, color: Colors.grey),
                    text: 'Vallensbaek Strand',
                    type: 'Location',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                  SizedBox(
                    height: (5/6.83)*SizeConfig.blockSizeVertical,
                  ),
                  Offer(
                    icon: Icon(Icons.image, color: Colors.grey),
                    text: '1 attached',
                    type: 'Image',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OfferButton(
                          colour: Color(0xFFFF9F9F9),
                          text: 'Reject',
                          textColor: Colors.grey,
                          onpressed: () {},
                        ),
                        OfferButton(
                          colour: Color(0xFF6224CF),
                          text: 'Send Offer',
                          textColor: Colors.white,
                          onpressed: () {
                            _showDialog();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowdialogOffer extends StatelessWidget {
  ShowdialogOffer({this.image, this.label, this.onchanged});

  final String image;
  final String label;
  final Function onchanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Image.asset(
            'images/$image.png',
            height: (20/6.83)*SizeConfig.blockSizeVertical,
            width: (20/4.1)*SizeConfig.blockSizeHorizontal,
          ),
          SizedBox(
            width: (10/4.1)*SizeConfig.blockSizeHorizontal,
          ),
          Container(
            width: (230/4.1)*SizeConfig.blockSizeHorizontal,
            height: (20/6.83)*SizeConfig.blockSizeVertical,
            child: TextField(
              decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: (13/4.1)*SizeConfig.blockSizeHorizontal,),
                  border: InputBorder.none,
                  labelText: label),
              onChanged: onchanged,
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({this.text, this.textColor, this.colour, this.onpressed});
  final String text;
  final Color textColor;
  final Color colour;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
        height: (40/6.83)*SizeConfig.blockSizeVertical,
        width: (110/4.1)*SizeConfig.blockSizeHorizontal,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: colour,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                topRight: Radius.circular(5.0))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
      onPressed: onpressed,
    );
  }
}
