import 'package:flutter/material.dart';

class CouponTab extends StatefulWidget {
  const CouponTab({super.key});

  @override
  State<CouponTab> createState() => _CouponTabState();
}

class _CouponTabState extends State<CouponTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 11,top: 15),
      margin: const EdgeInsets.only(top: 38),
      width: 320,
      height: 42,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xBABABABA),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Apply Coupon",
          border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFF8C7E7E))
        ),
      ),
    );
  }
}
