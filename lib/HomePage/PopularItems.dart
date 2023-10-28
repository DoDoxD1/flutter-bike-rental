import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/BikePage/BikePage.dart';
import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  PopularItems({super.key});

  List<Bike> bikes = [
    const Bike(
      img:"assets/meteor.png",
      title:"Meteore",
      company:"Royal Enfield",
      available:"Available",
      price:"699/",
      maxSpeed: "124 km/h",
      displacement: "1133 cc",
      category: "Cruiser",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Scout Bobber",
      company:"Indian",
      available:"Available",
      price:"1499/",
      maxSpeed: "144 km/h",
      displacement: "133 cc",
      category: "Adventure",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Rebel 1100",
      company:"Honda",
      available:"Available",
      price:"1199/",
      maxSpeed: "150 km/h",
      displacement: "1133 cc",
      category: "Adventure",
    ),
    const Bike(
      img:"assets/meteor.png",
      title:"Meteore",
      company:"Royal Enfield",
      available:"Available",
      price:"699/",
      maxSpeed: "126 km/h",
      displacement: "1333 cc",
      category: "Cruiser",
    ),
    const Bike(
      img:"assets/meteor.png",
      title:"Scout Bobber",
      company:"Indian",
      available:"Available",
      price:"1499/",
      maxSpeed: "124 km/h",
      displacement: "1133 cc",
      category: "Cruiser",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Rebel 1100",
      company:"Honda",
      available:"Available",
      price:"1199/",
      maxSpeed: "124 km/h",
      displacement: "1340 cc",
      category: "Cruiser",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column
      (
      children: [
        const Row(
          children: [
            Text("Popular ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21)),Text("items",style: TextStyle(fontSize: 21),)
          ],
        ),
        const SizedBox(height: 18,),
        Padding(
          padding: const EdgeInsets.all(2),
          child: SizedBox(
            height: 250,
            child: ListView.separated(
              separatorBuilder: (context,_) => SizedBox(width: 13,),
              scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context,index) => buildBikeCard(context, bike: bikes[index]),
            ),
          ),
        )
      ],
    );
  }
  Widget buildBikeCard(context, {
    required Bike bike,
  }) =>
      GestureDetector(
        onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BikePage(item: bike)),
          );
      },
  child: Container(
    height: 225,
    width: 143,
    decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xBABABABA),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20))
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 4,),
        Image(
          image: AssetImage(bike.img),
          height: 158,
          width: 292,
          ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(bike.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(bike.company,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(bike.price,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
              const Text("per day", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black),),
            ],
          ),
        ),
      ],
    ),
  ),);
}

