import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Amrapali Gramsahavas',
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Amrapali Gramsahavas...साहित्य - पर्यावरण आणि पर्यटनाची अनोखी सांगड ',
                textAlign: TextAlign.center,
              ),
              backgroundColor: Colors.black,
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  Image.asset('images/Amrapali.jpeg', height: 200, width: 200),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Welcome to Amrapali Gramsahavas (A home-stay for tourists)',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    child: Text(
                      'About Amrapali',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    child: Text(
                      'Check services',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
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
                  icon: Icon(Icons.home, color: Colors.blueAccent),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_pin, color: Colors.blueAccent),
                  label: 'Location',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call, color: Colors.blueAccent),
                  label: 'Contact us',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.photo, color: Colors.blueAccent),
                  label: 'Gallery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle, color: Colors.blueAccent),
                  label: 'My account',
                ),
              ],
            )));
  }
}
