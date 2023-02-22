import 'package:flutter/material.dart';
import 'package:myapp/gallery.dart';
import 'homepage.dart';
import 'booking.dart';
import 'sightseeing.dart';
import 'room services.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _Services();
}

class _Services extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Services", style: TextStyle(color: Colors.black)),
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
        body: Center(
            child: Builder(
                builder: (context) => SingleChildScrollView(
                        child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Booking()));
                          },
                          child: Image.asset('images/booking.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RoomServices()));
                          },
                          child: Image.asset('images/room services.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SightSeeing()));
                          },
                          child: Image.asset('images/sightseeing.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Gallery()));
                          },
                          child: Image.asset('images/gallery.png'),
                        ),
                      ],
                    )))));
  }

  // body: Center(
  //     child: Column(children: [
  //   Card(
  //     margin: const EdgeInsets.all(20),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         ListTile(
  //           leading: Image.asset('assets/images/compound_1.jpg'),
  //           title: const Text('Booking'),
  //           subtitle: const Text('This is a simple card in Flutter.'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   Card(
  //     margin: const EdgeInsets.all(20),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         ListTile(
  //           leading: Image.asset('assets/images/compound_1.jpg'),
  //           title: const Text('Room Services'),
  //           subtitle: const Text('This is a simple card in Flutter.'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   Card(
  //     margin: const EdgeInsets.all(20),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         ListTile(
  //           leading: Image.asset('assets/images/compound_1.jpg'),
  //           title: const Text('Sightseeing'),
  //           subtitle: const Text('This is a simple card in Flutter.'),
  //         ),
  //       ],
  //     ),
  //   ),
  //   Card(
  //     margin: const EdgeInsets.all(20),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: <Widget>[
  //         ListTile(
  //           leading: Image.asset('assets/images/compound_1.jpg'),
  //           title: const Text('Gallery'),
  //           subtitle: const Text('This is a simple card in Flutter.'),
  //         ),
  //       ],
  //     ),
  //   ),
  // ])),
}
