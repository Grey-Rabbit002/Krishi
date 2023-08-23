import 'package:assigned/screens/farm.dart';
import 'package:assigned/screens/gyan.dart';
import 'package:assigned/screens/home.dart';
import 'package:assigned/screens/krishi.dart';
import 'package:assigned/screens/station.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currNav = 0;
  List<Widget> tabs = [
    Home(),
    Station(),
    Krishi(),
    Farm(),
    Gyan(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currNav,
        fixedColor: Colors.orange,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: Colors.orange),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_filled,
                // color: Colors.grey,
              )),
          BottomNavigationBarItem(
              label: 'My Station',
              icon: Icon(
                Icons.place,
              )),
          BottomNavigationBarItem(
              label: 'Krishi Bazaar',
              icon: Icon(
                Icons.apple_outlined,
              )),
          BottomNavigationBarItem(
              label: 'My Farm',
              icon: Icon(
                Icons.square_rounded,
              )),
          BottomNavigationBarItem(
              label: 'Krishi Gyan',
              icon: Icon(
                Icons.book_rounded,
              )),
        ],
        onTap: (value) {
          setState(() {
            _currNav = value;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 120, // Adjust this width according to your needs
        child: FloatingActionButton(
          isExtended: true,
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text("Sell"),
            ],
          ),
        ),
      ),
      body: tabs[_currNav],
    );
  }
}
