import 'dart:ffi';

import 'package:flutter/material.dart';

class PayButton extends StatefulWidget {
  const PayButton({super.key});

  @override
  State<PayButton> createState() => _PayButtonState();
}

class _PayButtonState extends State<PayButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 64,
        width: 330,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.all(Radius.circular(20))
        ),
        child: Center(child: Text("PAY",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.white),)),
      ),
    );
  }
}
