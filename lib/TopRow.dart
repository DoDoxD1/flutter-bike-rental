import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.only(left: 11),
        child: Row(
          children: [
            const Image(image: AssetImage("assets/Ellipse.png"),
            ),
            Container(
              margin: EdgeInsets.only(left: 14,top: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text("Welcome",style: TextStyle(color: Color(0xFF8C7E7E)),),
                  ),
                  Container(
                    child: const Text("Abhi Tiwari",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
