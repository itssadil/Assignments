import 'package:assignment2/widgets/myGallery.dart';
import 'package:flutter/material.dart';

Widget photoDetails({
  required String subTitle,
  required String PhotoDescription,
  required double btnWidth,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        subTitle,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "$PhotoDescription",
        style: TextStyle(fontSize: 17),
      ),
      SizedBox(height: 20),
      SizedBox(
        width: btnWidth,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "See More",
            style: TextStyle(fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
      SizedBox(height: 20),
      SizedBox(height: 10),
      Text(
        "Suggesitions",
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      MyGallery(isPortrait: true, isPhysics: false),
    ],
  );
}
