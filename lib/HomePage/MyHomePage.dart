import 'TopRow.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'PopularItems.dart';
import 'RecentlyViewed.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(child: Container(
      color: Colors.white,
      child:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              const TopRow(),
              // MySearchBar(),
              const Categories(),
              const SizedBox(height: 38,),
              PopularItems(),
              const SizedBox(height: 26,),
              RecentlyViewed(),
            ],
          ),
        ),
      ),
    )),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 0))
        ),
        child: NavigationBar(
          height: 47,
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
            NavigationDestination(icon: Icon(Icons.map_outlined), label: "Map"),
            NavigationDestination(icon: Icon(Icons.wallet_outlined), label: "Wallet"),
            NavigationDestination(icon: Icon(Icons.settings_outlined), label: "Settings"),
          ],
        ),
      ),);
  }
}