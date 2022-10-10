import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amrapali Gramsahavas',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Amrapali Gramsahavas'),
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/compound_1.jpeg',
                      height: 200, width: 200),
                  Text(
                    'A tablet is a wireless touch screen computer that is smaller than a notebook but larger than a smartphone.',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
            drawer: Drawer(
              child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountName: Text("APN"),
                      accountEmail: Text("apn@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          "A",
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.contacts),
                      title: Text("Contact Us"),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.room_service),
                  label: 'Services',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.photo),
                  label: 'Gallery',
                ),
              ],
            )));
  }
}
