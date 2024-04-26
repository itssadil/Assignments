import 'package:assignment2/widgets/myAppBar.dart';
import 'package:assignment2/widgets/myGallery.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;
        return Scaffold(
          appBar: MyAppBar(
            title: "Photo Gallery",
            isPop: false,
            context: context,
          ),
          body: MyGallery(isPortrait: isPortrait, isPhysics: true),
        );
      },
    );
  }
}
