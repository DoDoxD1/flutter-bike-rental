import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/BikePage/BikePage.dart';
import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
  RecentlyViewed({super.key});

  List<Bike> bikes = [
    const Bike(
      img:"assets/hayabusa.png",
      title:"Hayabusa",
      available:"Available",
      price:"2000/",
      company:"Suzuki",
      maxSpeed: "312 km/h",
      displacement: "1340 cc",
      category: "Cruiser",
    ),
    const Bike(
      img:"assets/classic.png",
      title:"Classic 350",
      available:"Booked",
      price:"1500/",
      company:"Royal Enfield",
      maxSpeed: "150 km/h",
      displacement: "1133 cc",
      category: "Adventure",
    ),
    const Bike(
      img:"assets/hayabusa.png",
      title:"Hayabusa",
      available:"Available",
      price:"2000/",
      company:"Royal Enfield",
      maxSpeed: "124 km/h",
      displacement: "1133 cc",
      category: "Travel",
    ),
    const Bike(
      img:"assets/classic.png",
      title:"Classic 350",
      available:"Booked",
      price:"1500/",
      company:"Royal Enfield",
      maxSpeed: "124 km/h",
      displacement: "1340 cc",
      category: "Cruiser",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text("Recently ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),Text("viewed",style: TextStyle(fontSize: 21),)
          ],
        ),
        const SizedBox(height: 18,),
        Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            height: 300,
            child: ListView.separated(
              separatorBuilder: (context,_) => SizedBox(height: 20,),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context,index) => buildBikeCard(context,bikes[index]),
        ),
        ),
        )],
    );
  }

  Widget buildBikeCard(context, Bike bike) => GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BikePage(item: bike)),
      );
    },
    child: Container(
      height: 60,
      width: 342,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xBABABABA),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            const SizedBox(width: 9,),
            Image(image: AssetImage(bike.img),height: 35,width: 45,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bike.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),
                  Row(
                    children: [
                      Text(bike.price,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                      const Text("per day", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
          ],),
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: Container(
              width: 80,
                height: 32,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),

                child: Center(child: Text(bike.available,style: TextStyle(fontSize: 15,color: Colors.white),))
            ),
          ),
        ],
      ),
    ),
  );
}
