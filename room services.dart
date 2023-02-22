import 'package:flutter/material.dart';
import 'package:myapp/services.dart';

class RoomServices extends StatefulWidget {
  const RoomServices({Key? key}) : super(key: key);

  @override
  State<RoomServices> createState() => _RoomServicesState();
}

class _RoomServicesState extends State<RoomServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RoomServices us",
            style: TextStyle(color: Colors.black)),
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
