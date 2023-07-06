// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ViewProductsScreen extends StatelessWidget {
  ViewProductsScreen({super.key});
  BoxDecoration custom = BoxDecoration(
      borderRadius: BorderRadius.circular(25), color: Color(0xff454D5A));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333742),
      appBar: AppBar(
        backgroundColor: const Color(0xff333742),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_rounded, color: Colors.white),
          )
        ],
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        children: [
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
          NewWidget(custom: custom),
        ],
      ),
    );
  }
}

class NewWidget extends StatefulWidget {
  NewWidget({
    super.key,
    required this.custom,
  });

  final BoxDecoration custom;

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  bool favoriteSelected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topLeft, children: [
      Container(
        width: 190,
        height: 250,
        decoration: widget.custom,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Color(0xff4B535F),
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff333742)),
                    child: const Row(
                      children: [
                        Text(
                          "4.6  ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0XFFFDD14B),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      isSelected: favoriteSelected,
                      onPressed: () {
                        setState(() {
                          favoriteSelected = !favoriteSelected;
                        });
                      },
                      selectedIcon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PlayStation 5",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$890.00",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "\$890.00",
                        style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
        right: 9,
        bottom: 62,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff333742)),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            iconSize: 16,
          ),
        ),
      ),
      const Positioned(
          top: 50,
          child: Image(
            image: AssetImage('images/ps5.png'),
            height: 140,
            width: 140,
          )),
    ]);
  }
}
