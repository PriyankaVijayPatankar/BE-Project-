import 'package:flutter/material.dart';
import 'package:myapp/services.dart';

class SightSeeing extends StatefulWidget {
  const SightSeeing({Key? key}) : super(key: key);

  @override
  State<SightSeeing> createState() => _SightSeeingState();
}

class _SightSeeingState extends State<SightSeeing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("SightSeeing us", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Services()));
          },
        ),
      ),
    );
  }
}
