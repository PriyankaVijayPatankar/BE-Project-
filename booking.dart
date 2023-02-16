// this is the minimum code required

import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/main.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<String> famcottage = [
    "Hello World",
    "This is FlutterCampus",
    "Learn App Building.",
    "Flutter is the Best"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Column(
        children:
            // Text("Family Cottage"),
            // Image.asset('assets/images/sindhu.jpeg'),
            famcottage.map((strone) {
          return Row(children: [
            //Text("Family Cottage"),
            //Image.asset('assets/images/sindhu.jpeg'),
            Text(
              "\u2022",
              style: TextStyle(fontSize: 30),
            ), //bullet text
            SizedBox(
              width: 10,
            ), //space between bullet and text
            Expanded(
              child: Text(
                strone,
                style: TextStyle(fontSize: 30),
              ), //text
            )
          ]);
        }).toList(),
      ),
    );
  }
}
