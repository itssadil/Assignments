import 'package:assignment2/screens/photoInfo.dart';
import 'package:flutter/material.dart';

class MyGallery extends StatelessWidget {
  MyGallery({required this.isPortrait, required this.isPhysics});
  final bool isPortrait;
  final bool isPhysics;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> photoBanner = [
      {
        "image": "assets/images/1.jpg",
        "title": "Mood",
        "subTitle": "Mood with Nature",
        "photoDescription":
            "Being In Nature, Or Even Viewing Scenes Of Nature, Reduces Anger, Fear, And Stress And Increases Pleasant Feelings",
      },
      {
        "image": "assets/images/2.jpg",
        "title": "Asthetic",
        "subTitle": "Soulful Beauty Captured",
        "photoDescription":
            "The aesthetic experience of a place or artwork can evoke deep emotions and appreciation, offering a unique connection between beauty and the human soul.",
      },
      {
        "image": "assets/images/3.jpg",
        "title": "Animals",
        "subTitle": "Furry Friends' Comfort",
        "photoDescription":
            "In the heart of the wilderness, where the earth beats with the rhythm of life, creatures both fierce and gentle roam freely. From the majestic stride of the lion to the delicate flutter of a butterfly's wings, each embodies a story of survival and adaptation, woven into the rich tapestry of the natural world.",
      },
      {
        "image": "assets/images/4.jpg",
        "title": "City",
        "subTitle": "Urban Tapestry Alive",
        "photoDescription":
            "The city pulses with a heartbeat all its own, a symphony of sounds and sights that never sleep. Streets teeming with life, where the echoes of footsteps blend with the melody of car horns and laughter, painting a portrait of urban vitality against the backdrop of towering skyscrapers.",
      },
      {
        "image": "assets/images/5.jpg",
        "title": "Travel",
        "subTitle": "Journey's Boundless Discovery",
        "photoDescription":
            "The open road stretches out like a promise, winding through landscapes both familiar and unknown. Each mile traveled is a journey of discovery, where the destination is just a waypoint on the map of experiences waiting to be explored.",
      },
      {
        "image": "assets/images/6.jpg",
        "title": "Sky",
        "subTitle": "Infinite Skies Above",
        "photoDescription":
            "The canvas of the heavens, painted with hues of dawn and dusk, a masterpiece in perpetual motion. Clouds drift like thoughts across the vast expanse, while stars twinkle like diamonds scattered upon a velvet tapestry, inviting wonder and contemplation.",
      },
      {
        "image": "assets/images/7.jpg",
        "title": "Road",
        "subTitle": "Endless Path Awaits",
        "photoDescription":
            "The road unfurls like a ribbon of possibility, leading to destinations yet unseen. Each curve and bend a chapter in the story of adventure, where the journey itself is as significant as the final destination.",
      },
      {
        "image": "assets/images/8.jpg",
        "title": "Flowers",
        "subTitle": "Blossoms' Vibrant Charm",
        "photoDescription":
            " In fields of vibrant blooms, colors collide in a riotous celebration of life. Each petal holds the essence of springtime, a delicate reminder of nature's resilience and beauty, blooming even in the harshest of conditions.",
      }
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics:
          isPhysics ? BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isPortrait ? 2 : 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: photoBanner.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhotoInfo(
                image: photoBanner[index]["image"],
                title: photoBanner[index]["title"],
                subTitle: photoBanner[index]["subTitle"],
                PhotoDescription: photoBanner[index]["photoDescription"],
                isPortrait: isPortrait,
              ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(photoBanner[index]["image"]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0, 5),
                  spreadRadius: 3,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "${photoBanner[index]["title"]}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              alignment: Alignment.bottomLeft,
            ),
          ),
        );
      },
    );
  }
}
