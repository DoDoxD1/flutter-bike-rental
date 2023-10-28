import 'package:bike_rentals/BikePage/AppBar.dart';
import 'package:flutter/material.dart';
import 'DateTab.dart';
import 'CouponTab.dart';
import 'DetailsTab.dart';
import 'PayButon.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        body: const SafeArea(child: SingleChildScrollView(
        child: Column(children: [
        MyAppBar(title: "Check Out"),
        DateTab(),
        CouponTab(),
        DetailsTab(),
        PayButton(),
      ],),
    ),),
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
