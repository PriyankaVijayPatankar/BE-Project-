import 'package:flutter/material.dart';

import 'account.dart';
import 'contact.dart';
import 'gallery.dart';
import 'maps.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amrapali Gramsahavas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [HomePage(), Maps(), Contact(), Gallery(), Account()];

  int selectIndex = 0;

  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/Logo.png'),
          onPressed: () {},
        ),
        title: const Text(
          'Amrapali Gramsahavas',
          style: TextStyle(fontSize: 35),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          //backgroundColor: Colors.black,
          backgroundColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: onItemTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectIndex == 0 ? Colors.white : Colors.grey,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_pin,
                color: selectIndex == 1 ? Colors.white : Colors.grey,
              ),
              label: "Location",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_in_talk,
                color: selectIndex == 2 ? Colors.white : Colors.grey,
              ),
              label: "Contact Us",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.photo,
                color: selectIndex == 3 ? Colors.white : Colors.grey,
              ),
              label: "Gallery",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: selectIndex == 4 ? Colors.white : Colors.grey,
              ),
              label: "Account",
            ),
          ]),
    );
  }
}
