import 'package:bike_rentals/TopRow.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'SearchBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Scaffold(
        resizeToAvoidBottomInset : false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopRow(),
              MySearchBar(),
              Categories(),
            ],
          ),
        ),
      ),
    );
  }
}