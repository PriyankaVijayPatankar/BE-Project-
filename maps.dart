//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
//import 'package:url_launcher/url_launcher.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Maps", style: TextStyle(color: Colors.black)),
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
        body: Builder(
            builder: (context) => SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/maps.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text.rich(TextSpan(
                    //     style: TextStyle(
                    //         color: Colors.blue,
                    //         decoration: TextDecoration.underline),
                    //     text:
                    //         "Visit Google maps to reach Amrapali Gramsahavas from your current location:",
                    //     recognizer: TapGestureRecognizer()
                    //       ..onTap = () async {
                    //on tap code here, you can navigate to other page or URL
                    //   String url =
                    //       "https://goo.gl/maps/eyMet2iHStP2eyWR7";
                    //   var urllaunchable = await canLaunch(
                    //       url); //canLaunch is from url_launcher package
                    //   if (urllaunchable) {
                    //     await launch(
                    //         url); //launch is from url_launcher package to launch URL
                    //   } else {
                    //     Text("URL can't be launched.");
                    //   }
                    // }))
                  ],
                ))));
  }
}
