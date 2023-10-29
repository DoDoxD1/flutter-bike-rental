import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 20, bottom: 25),
      height: 60,
      decoration: const BoxDecoration(
          color: Color(0xFFEFEEEE),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 14,
          ),
          Image(
            image: AssetImage("assets/search.png"),
            height: 45,
            width: 30,
          ),
          SizedBox(
            width: 14,
          ),
          SizedBox(
            width: 200,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Bike",
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFD2CFCF)),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
