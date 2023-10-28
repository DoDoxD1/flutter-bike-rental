import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/CheckoutPage/CheckoutPgae.dart';
import 'package:flutter/material.dart';
import 'HomePage/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bike = const Bike(
    img:"assets/Harley.png",
    title:"Scout Bobber",
    company:"Indian",
    available:"Available",
    price:"1499/",
    maxSpeed: "124 km/h",
    displacement: "1133 cc",
    category: "Cruiser",
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike Rentals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        body: SafeArea(child: CheckoutPage()),
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
        ),
      ),
    );
  }
}
