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
    return const SingleChildScrollView(
      child: Column(children: [
        MyAppBar(title: "Check Out"),
        DateTab(),
        CouponTab(),
        DetailsTab(),
        PayButton(),
      ],),
    );
  }
}
