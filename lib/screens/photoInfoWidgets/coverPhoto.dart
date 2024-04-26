import 'package:flutter/material.dart';

Widget coverPhoto({
  required BuildContext context,
  required String image,
  required double width,
  required double height,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(0, 5),
          spreadRadius: 3,
          blurRadius: 10,
        ),
      ],
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
