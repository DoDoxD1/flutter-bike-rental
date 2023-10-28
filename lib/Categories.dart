import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategoryCard("Adventure"),
          const SizedBox(width: 12,),
          buildCategoryCard("Cruiser"),
          const SizedBox(width: 12,),
          buildCategoryCard("Sportsbike"),
          const SizedBox(width: 12,),
          buildCategoryCard("Tourism"),
          const SizedBox(width: 12,),
          buildCategoryCard("Others"),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }
}

Widget buildCategoryCard(String title)  => Container(
  width: 100,
  height: 50,
  decoration: BoxDecoration(
    border: Border.all(
      color: const Color(0xBABABABA),
    ),
      borderRadius: const BorderRadius.all(Radius.circular(20))
  ),
  child: Center(child: Text(title,style: const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),)),
);
