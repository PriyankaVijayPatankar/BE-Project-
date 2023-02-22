import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About", style: TextStyle(color: Colors.black)),
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
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text(
                'lorem epsum',
                style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('images/compound_1.jpg'),
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
