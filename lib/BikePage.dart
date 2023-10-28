
import 'package:bike_rentals/Bike.dart';
import 'package:flutter/material.dart';


class BikePage extends StatelessWidget {
  const BikePage({super.key, required this.item});
  final Bike item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text(item.title),);
  }
}
