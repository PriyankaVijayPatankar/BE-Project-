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
                              Image.asset('assets/images/compound_1.jpg'),
                              //Image.network(
                              //  'https://i1.wp.com/famt.ac.in/wp-content/uploads/2015/08/DSC_0050.jpg',
                              //  height: 300,
                              //),
                              Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Center(
                                    child: RichText(
                                      // need to update the font size and indentation
                                      text: TextSpan(
                                          text: 'Welcome to\n',
                                          children: <InlineSpan>[
                                            TextSpan(
                                                text: 'Amrapali Gramsahavas\n',
                                                style: TextStyle(
                                                    color: Colors.blueAccent,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text:
                                                  // need to confirm from the client
                                                  'A fine union of Literature, Environment and Tourism',
                                            )
                                          ]),
                                    ),
                                  )),
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ButtonTheme(
                                    minWidth: 400.0,
                                    height: 60,
                                    child: RaisedButton(
                                      child: Text('About Amrapali Gramsahavas',
                                          style: TextStyle(fontSize: 20)),
                                      color: Colors.black,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
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
                                    child: RaisedButton(
                                      child: Text('Check Services',
                                          style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      color: Colors.black,
                                      textColor: Colors.white,
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Services()));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        )))));
  }
}
