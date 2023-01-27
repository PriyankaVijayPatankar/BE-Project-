import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'homepage.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/main 11.jpeg",
      "assets/images/main 22.jpeg",
      "assets/images/main 13.jpeg",
      "assets/images/main 26.jpeg",
      "assets/images/main 27.jpeg",
      "assets/images/main.jpeg",
      "assets/images/neelam.jpeg",
      "assets/images/ratna.jpeg",
      "assets/images/sindhu.jpeg",
      "assets/images/suvarna.jpeg",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Gallery", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
          child: GridView.builder(
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(images[index]);
        },
      )),
    ));
  }
}
