import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,bottom: 25,left: 10),
      child: Row(
        children: [
          const Image(image: AssetImage("assets/Ellipse.png"),
          ),
          Container(
            margin: const EdgeInsets.only(left: 14,top: 6),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome",style: TextStyle(color: Color(0xFF8C7E7E)),),
                Text("Abhi Tiwari",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
