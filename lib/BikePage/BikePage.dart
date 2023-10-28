
import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/BikePage/AddItems.dart';
import 'package:flutter/material.dart';
import 'AppBar.dart';
import 'BikeDetails.dart';


class BikePage extends StatelessWidget {
  const BikePage({super.key, required this.item});
  final Bike item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          MyAppBar(title: "Bike Details"),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(children: [
              BikeDetails(bike: item),
              SizedBox(height: 36,),
              AddItems(),
            ],)

          )
        ],
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
