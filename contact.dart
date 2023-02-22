import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text("Contact us", style: TextStyle(color: Colors.black)),
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
          //title: Text("Contact us"),
        ),
        body: Builder(
            builder: (context) => SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Address: "Amrapali Gramsahavas", Barve Ali, Jalgaon, Dapoli - 415712',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Email address: pakshiknivedita@gmail.com',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Instagram profile: https://www.instagram.com/amrapali_dapoli/',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Contact Number: 9561142078 / 9422430214',
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                )));
  }
}
