import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key, required this.title});

  final String title;

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 31),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Image(
                image: AssetImage("assets/img.png"),
                height: 30,
                width: 29,
              )),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xBABABABA),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              height: 60,
              width: 274,
              child: Center(
                  child: Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )))
        ],
      ),
    );
  }
}
