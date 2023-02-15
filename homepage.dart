import 'package:flutter/material.dart';

import 'about.dart';
import 'services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Builder(
            builder: (context) => SingleChildScrollView(
                  child: Center(
                    child: Column(children: [
                      // make the image size large, occupying the whole width of screen, and atleast 40% of vertical screen
                      Image.asset(
                        'assets/images/compound_1.jpg',
                        //scale: 0.8,
                        fit: BoxFit.contain,
                        width: double.infinity,
                        //height: 308,
                      ),
                      //Image.network(
                      //  'https://i1.wp.com/famt.ac.in/wp-content/uploads/2015/08/DSC_0050.jpg',
                      //  height: 300,
                      //),
                      Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                text: 'Welcome to\n',
                                //textAlign: TextAlign.center,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Amrapali\nGramsahavas\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                          fontSize: 40)),
                                  TextSpan(
                                      text:
                                          'A fine union of Literature, Environment and Tourism'),
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonTheme(
                            minWidth: 400.0,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                //elevation: 100,
                                padding: EdgeInsets.all(20.0), // Elevation
                                // shadowColor:
                                //     Color.fromARGB(255, 50, 49, 49),
                              ),
                              child: Text('About Amrapali Gramsahavas      >',
                                  style: TextStyle(fontSize: 20)),
                              //color: Colors.black,
                              //textColor: Colors.white,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => About()));
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonTheme(
                            minWidth: 400.0,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.all(20.0),
                              ),
                              child: Text('Check Services     >',
                                  style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              //color: Colors.black,
                              //textColor: Colors.white,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Services()));
                              },
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                )),
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}
