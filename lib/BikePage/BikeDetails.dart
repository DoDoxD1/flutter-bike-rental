import 'package:bike_rentals/Bike.dart';
import 'package:bike_rentals/CheckoutPage/CheckoutPage.dart';
import 'package:flutter/material.dart';

class BikeDetails extends StatefulWidget {
  const BikeDetails({super.key, required this.bike});

  final Bike bike;

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.bike.company,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          widget.bike.title,
                          style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 63,
                    width: 136,
                    padding: const EdgeInsets.only(left: 11),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xBABABABA),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8C7E7E)),
                        ),
                        Text(
                          widget.bike.category,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32),
                    padding: const EdgeInsets.only(left: 11),
                    height: 63,
                    width: 136,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xBABABABA),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Displacement",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8C7E7E)),
                        ),
                        Text(
                          widget.bike.displacement,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 282,
                  width: 203,
                  decoration: const BoxDecoration(
                      color: Color(0x66BABABA),
                      borderRadius:
                          BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Image(
                      image: AssetImage("assets/scout.png"),
                      width: 219,
                      height: 237,
                    )),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 15, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 63,
                width: 136,
                padding: const EdgeInsets.only(left: 11),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xBABABABA),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Max. Speed",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8C7E7E)),
                    ),
                    Text(
                      widget.bike.maxSpeed,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckoutPage()));
                },
                child: Container(
                  height: 70,
                  width: 200,
                  padding: const EdgeInsets.only(left: 11),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Rent",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.bike.price,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const Text(
                            "per day",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
