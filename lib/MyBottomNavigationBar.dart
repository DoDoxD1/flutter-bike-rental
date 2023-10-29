import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
          indicatorColor: Colors.white,
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 0))
      ),
      child: NavigationBar(
        height: 47,
        elevation: 10.0,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        destinations: const [
          NavigationDestination(icon: Image(image: AssetImage("assets/home.png"),height:30,width:30), label: "Home"),
          NavigationDestination(icon: Image(image: AssetImage("assets/maps.png"),height:30,width:30), label: "Maps"),
          NavigationDestination(icon: Image(image: AssetImage("assets/card.png"),height:30,width:30), label: "Cards"),
          NavigationDestination(icon: Image(image: AssetImage("assets/settings.png"),height:30,width:30), label: "Settings"),
        ],
      ),
    );
  }
}
