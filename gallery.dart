import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/main 11.jpeg",
      "images/main 22.jpeg",
      "images/main 13.jpeg",
      "images/main 26.jpeg",
      "images/main 27.jpeg",
      "images/main.jpeg",
      "images/neelam.jpeg",
      "images/ratna.jpeg",
      "images/sindhu.jpeg",
      "images/suvarna.jpeg",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Gallery", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyApp()));
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
