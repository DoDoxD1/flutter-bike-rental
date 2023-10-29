import 'package:flutter/material.dart';
import 'package:bike_rentals/Item.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  List<Item> items = [
    const Item(img: "assets/jacket.png", title: "Riding Jacket", price: "800/"),
    const Item(img: "assets/gloves.png", title: "Riding Gloves", price: "800/"),
    const Item(img: "assets/helmet.png", title: "Helmet", price: "800/"),
    const Item(img: "assets/boots.png", title: "Riding Boots", price: "800/"),
  ];

  static const _colorContainer = [
    Color(0xFFBFC5BF),
    Color(0xFFBFC5BF),
    Color(0xFFBFC5BF),
    Color(0xFFBFC5BF)
  ];
  static final _colorText = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black
  ];
  static final _text = ["Add", "Add", "Add", "Add"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const Row(
            children: [
              Text("Add ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
              Text(
                "items",
                style: TextStyle(fontSize: 21),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: SizedBox(
              child: ListView.separated(
                separatorBuilder: (context, _) => const SizedBox(
                  height: 20,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) =>
                    buildItemsCard(items[index], index),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }

  Widget buildItemsCard(Item item, index) => Container(
        height: 60,
        width: 342,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xBABABABA),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                Image(
                  image: AssetImage(item.img),
                  height: 35,
                  width: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            item.price,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const Text(
                            "per day",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 19),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _colorContainer[index] =
                        _colorContainer[index] == Colors.black
                            ? const Color(0xFFBFC5BF)
                            : Colors.black;
                    _colorText[index] = _colorText[index] == Colors.black
                        ? const Color(0xFFBFC5BF)
                        : Colors.black;
                    _text[index] = _text[index] == "Add" ? "1" : "Add";
                  });
                },
                child: Container(
                    width: 80,
                    height: 32,
                    decoration: BoxDecoration(
                        color: _colorContainer[index],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                      _text[index],
                      style: TextStyle(fontSize: 15, color: _colorText[index]),
                    ))),
              ),
            ),
          ],
        ),
      );
}
