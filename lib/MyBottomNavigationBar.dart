import 'package:bike_rentals/HomePage/MyHomePage.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int index = 0;

  final screens = [
    "Home",
    "Map",
    "Wallet",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle:
              MaterialStateProperty.all(const TextStyle(fontSize: 0))),
      child: NavigationBar(
        height: 47,
        elevation: 10.0,
        selectedIndex: index,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        destinations: const [
          NavigationDestination(
              icon: Image(
                  image: AssetImage("assets/home.png"), height: 30, width: 30),
              label: "Home"),
          NavigationDestination(
              icon: Image(
                  image: AssetImage("assets/maps.png"), height: 30, width: 30),
              label: "Maps"),
          NavigationDestination(
              icon: Image(
                  image: AssetImage("assets/card.png"), height: 30, width: 30),
              label: "Cards"),
          NavigationDestination(
              icon: Image(
                  image: AssetImage("assets/settings.png"),
                  height: 30,
                  width: 30),
              label: "Settings"),
        ],
        onDestinationSelected: (index) => setState(() {
          this.index = index;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Opening ${screens[index]}"),
          ));
        }),
      ),
    );
  }
}
