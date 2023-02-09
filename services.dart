import 'package:flutter/material.dart';
import 'package:mymobileapp/main.dart';
import 'homepage.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _AccountState();
}

class _AccountState extends State<Services> {
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
          child: Column(children: [
        Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/compound_1.jpg'),
                title: const Text('Booking'),
                subtitle: const Text('This is a simple card in Flutter.'),
              ),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/compound_1.jpg'),
                title: const Text('Room Services'),
                subtitle: const Text('This is a simple card in Flutter.'),
              ),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/compound_1.jpg'),
                title: const Text('Sightseeing'),
                subtitle: const Text('This is a simple card in Flutter.'),
              ),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset('assets/images/compound_1.jpg'),
                title: const Text('Gallery'),
                subtitle: const Text('This is a simple card in Flutter.'),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
