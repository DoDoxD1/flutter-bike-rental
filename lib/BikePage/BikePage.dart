import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/BikePage/AddItems.dart';
import 'package:flutter/material.dart';
import 'AppBar.dart';
import 'BikeDetails.dart';
import '../MyBottomNavigationBar.dart';

class BikePage extends StatefulWidget {
  const BikePage({super.key, required this.item});

  final Bike item;

  @override
  State<BikePage> createState() => _BikePageState();
}

class _BikePageState extends State<BikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const MyAppBar(title: "Bike Details"),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    BikeDetails(bike: widget.item),
                    const SizedBox(
                      height: 36,
                    ),
                    const AddItems(),
                  ],
                ))
          ],
        ),
      )),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
