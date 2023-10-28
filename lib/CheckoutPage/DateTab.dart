import 'package:flutter/material.dart';

class DateTab extends StatefulWidget {
  const DateTab({super.key});

  @override
  State<DateTab> createState() => _DateTabState();
}

class _DateTabState extends State<DateTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      height: 183,
      width: 330,
      decoration: BoxDecoration(
          color: const Color(0xFFC4C4C4),
          borderRadius: const BorderRadius.all(Radius.circular(30))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 296,
            decoration: BoxDecoration(
                color: const Color(0xFFE5E5E5),
                borderRadius: const BorderRadius.all(Radius.circular(30))
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text("Start Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xFF8C7E7E)),),
                    ),
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text("09-06-2021",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                    ),
                  ],),
                Image(image: AssetImage("assets/calendar.png"),height: 30,width: 32,),
              ],
            ),
          ),
          SizedBox(height: 9,),
          Container(
            height: 70,
            width: 296,
            decoration: BoxDecoration(
                color: const Color(0xFFE5E5E5),
                borderRadius: const BorderRadius.all(Radius.circular(30))
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text("End Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xFF8C7E7E)),),
                    ),
                    SizedBox(
                      height: 23,
                      width: 175,
                      child: Text("12-06-2021",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                    ),
                  ],),
                Image(image: AssetImage("assets/calendar.png"),height: 30,width: 32,),
              ],
            ),
          )
        ],),
    );
  }
}
