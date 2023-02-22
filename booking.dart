// this is the minimum code required

import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'booknow.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bookNow(context),
        body: Builder(
            builder: (context) => SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Family Cottage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                        textAlign: TextAlign.start,
                      ),
                      // make the image size large, occupying the whole width of screen, and atleast 40% of vertical screen
                      Image.asset(
                        'images/sindhu.jpg',
                        //scale: 0.8,
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Text(
                          '4 Beds\nAttached Washroom\nDaily Housekeeping\nAC/Non-AC\nRoom Service\nComplimentary Mineral Water\nCoffee/Tea Services\n24/7 Hot bathing water\nExtra bed if required'),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ButtonTheme(
                                //minWidth: double.infinity,
                                height: 60,
                                child: ElevatedButton(
                                  //style: ElevatedButton.styleFrom(
                                  // backgroundColor: Colors.black,
                                  // foregroundColor: Colors.white,
                                  //),
                                  child: Text('Book Now     >',
                                      style: TextStyle(fontSize: 15)),
                                  //color: Colors.black,
                                  //textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => BookNow()));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Couple Cottage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                        //textAlign: TextAlign.left,
                      ),
                      // make the image size large, occupying the whole width of screen, and atleast 40% of vertical screen
                      Image.asset(
                        'images/sindhu.jpg',
                        //scale: 0.8,
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Text(
                          '2 Beds\nAttached Washroom\nDaily Housekeeping\nAC/Non-AC\nRoom Service\nComplimentary Mineral Water\nCoffee/Tea Services\n24/7 Hot bathing water\nExtra bed if required'),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ButtonTheme(
                                //minWidth: double.infinity,
                                height: 60,

                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // backgroundColor: Colors.black,
                                      // foregroundColor: Colors.white,
                                      // padding: EdgeInsets.all(20.0),
                                      ),
                                  child: Text('Book Now      >',
                                      style: TextStyle(
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  //color: Colors.black,
                                  //textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => BookNow()));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )));
  }
}

PreferredSizeWidget bookNow(BuildContext context) {
  return AppBar(
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
  );
}
