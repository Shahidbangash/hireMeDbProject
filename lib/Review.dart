import 'package:flutter/material.dart';
// import 'flutter_rating_bar.dart';
import 'MyProfile.dart';
import 'sizeconfig.dart';

class review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6224CF),
        title: Text('Review Now'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height:(180 / 6.83) * SizeConfig.blockSizeVertical,
              color: Color(0xFF6224CF),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: (10 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/Profile.png'),
                      foregroundColor: Colors.black26,
                      radius: (50 / 6.83) * SizeConfig.blockSizeVertical,
                    ),
                  ),
                  SizedBox(
                    height: (20 / 6.83) * SizeConfig.blockSizeVertical,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Azim Shielk',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              (20 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                      SizedBox(
                        width: (5 / 4.1) * SizeConfig.blockSizeHorizontal,
                      ),
                      Text(
                        ' | Plumber',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:
                              (12 / 4.1) * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: (40 / 6.83) * SizeConfig.blockSizeVertical,
                ),
                // RatingBar(
                //   initialRating: 3,
                //   direction: Axis.horizontal,
                //   allowHalfRating: true,
                //   itemCount: 5,
                //   itemPadding: EdgeInsets.symmetric(horizontal: 15.0),
                //   itemBuilder: (context, _) => Column(
                //     children: <Widget>[
                //       Icon(
                //         Icons.star,
                //         color: Colors.green,
                //         size: (450 / 4.1) * SizeConfig.blockSizeHorizontal,
                //       ),
                //       Text(
                //         'Text one',
                //         style: TextStyle(
                //           fontSize:
                //               (150 / 4.1) * SizeConfig.blockSizeHorizontal,
                //         ),
                //       )
                //     ],
                //   ),
                //   onRatingUpdate: (rating) {
                //     print(rating);
                //   },
                // ),
                SizedBox(
                  height: (30 / 6.83) * SizeConfig.blockSizeVertical,
                ),
                Container(
                  height: (150 / 4.1) * SizeConfig.blockSizeHorizontal,
                  width: (350 / 4.1) * SizeConfig.blockSizeHorizontal,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F8F9),
                    border: Border.all(color: Color(0xFFE3DDDC)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Let us know your experience',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: (40 / 6.83) * SizeConfig.blockSizeVertical,
                ),
                MainButton(
                  text: 'Submit',
                  onpressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
