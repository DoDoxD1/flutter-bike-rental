import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  PopularItems({super.key});

  List<Bike> bikes = [
    const Bike(
      img:"assets/meteor.png",
      title:"Meteore",
      company:"Royal Enfield",
      price:"699/",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Scout Bobber",
      company:"Indian",
      price:"1499/",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Rebel 1100",
      company:"Honda",
      price:"1199/",
    ),
    const Bike(
      img:"assets/meteor.png",
      title:"Meteore",
      company:"Royal Enfield",
      price:"699/",
    ),
    const Bike(
      img:"assets/meteor.png",
      title:"Scout Bobber",
      company:"Indian",
      price:"1499/",
    ),
    const Bike(
      img:"assets/Harley.png",
      title:"Rebel 1100",
      company:"Honda",
      price:"1199/",
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
                itemBuilder: (context,index) => buildBikeCard(bikes[index]),
            ),
          ),
        )
      ],
    );
  }
  Widget buildBikeCard(Bike bike) => Container(
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
        Image(image: AssetImage(bike.img),height: 158,width: 292,),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(bike.title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(bike.company,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(bike.price,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
              const Text("per day", style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black),),
            ],
          ),
        ),
      ],
    ),
  );
}

class Bike {
  final String img;
  final String title;
  final String price;
  final String company;
  const Bike({
    required this.img,
    required this.title,
    required this.price,
    required this.company,
});
}
