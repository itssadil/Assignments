import 'package:assignment2/screens/photoInfoWidgets/coverPhoto.dart';
import 'package:assignment2/screens/photoInfoWidgets/photoDetails.dart';
import 'package:assignment2/widgets/myAppBar.dart';
import 'package:flutter/material.dart';

class PhotoInfo extends StatelessWidget {
  PhotoInfo(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.PhotoDescription,
      required this.isPortrait});

  final String image;
  final String title;
  final String subTitle;
  final String PhotoDescription;
  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: title,
        isPop: true,
        context: context,
      ),
      // body: SingleChildScrollView(child: MyGallery(isPortrait: isPortrait)),
      body: isPortrait
          ? SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    coverPhoto(
                      context: context,
                      image: image,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.35,
                    ),
                    SizedBox(height: 25),
                    photoDetails(
                      context: context,
                      subTitle: subTitle,
                      PhotoDescription: PhotoDescription,
                      btnWidth: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  coverPhoto(
                    context: context,
                    image: image,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width * 0.35,
                  ),
                  SizedBox(width: 25),
                  SingleChildScrollView(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: photoDetails(
                        context: context,
                        subTitle: subTitle,
                        PhotoDescription: PhotoDescription,
                        btnWidth: MediaQuery.of(context).size.width * 0.55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
