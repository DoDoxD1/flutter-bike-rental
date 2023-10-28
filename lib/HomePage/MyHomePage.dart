import 'TopRow.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'PopularItems.dart';
import 'RecentlyViewed.dart';
import '../MyBottomNavigationBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(child: Container(
      color: Colors.white,
      child:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              const TopRow(),
              // MySearchBar(),
              const Categories(),
              const SizedBox(height: 38,),
              PopularItems(),
              const SizedBox(height: 26,),
              RecentlyViewed(),
            ],
          ),
        ),
      ),
    )),
      bottomNavigationBar: MyBottomNavigationBar(),);
  }
}