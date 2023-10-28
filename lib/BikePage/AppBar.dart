import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 31),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assets/img.png"), height: 30, width: 29,),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xBABABABA),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
              ),
            height: 60,
              width: 274,
              child: Center(child: Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),)))
        ],
      ),
    );
  }
}
