
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
    return SingleChildScrollView(
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
    );
  }
}
