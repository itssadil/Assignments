import 'package:flutter/material.dart';

PreferredSizeWidget MyAppBar(
    {required String title,
    required bool isPop,
    required BuildContext context}) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
          onPressed: () {
            if (isPop) {
              Navigator.pop(context);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
    ),
    actions: [Icon(Icons.more_vert)],
  );
}
