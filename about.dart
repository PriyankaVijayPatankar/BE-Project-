import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AccountState();
}

class _AccountState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text(
                'About',
                style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('compound_1.jpg'),
              SizedBox(
                height: 30,
              ),
              Text(
                  'Amrapali Gramsahavas is a homestay for tourists, situated in Dapoli taluka in Ratnagiri district.')
            ],
          ),
        ),
      ),
    );
  }
}
