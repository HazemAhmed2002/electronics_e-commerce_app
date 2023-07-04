import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("< PS5", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: Colors.white,
          )
        ],
        backgroundColor: const Color(0XFF333742),
      ),
      backgroundColor: const Color(0XFF333742),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 10,
            left: 12,
            child: Text('PULSE 3D\nWireless Headset',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Positioned(
            top: 120,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: 800,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0XFF454D5A),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Opacity(
                          opacity: .5,
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                              ),
                              Text("1.5K",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(height: 15),
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "212",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(height: 15),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "120",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                              color: const Color(0XFF333742),
                              borderRadius: BorderRadius.circular(6)),
                          child: const Row(
                            children: [
                              Text(
                                "4.6  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0XFFFDD14B),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 107,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$180.99',
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 18),
                            ),
                            Text(
                              '\$179.95',
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: 53,
                          height: 29,
                          decoration: BoxDecoration(
                              color: const Color(0XFF343743),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Center(
                            child: Text(
                              "24%",
                              style: TextStyle(
                                  color: Color(0XFF6AED8A), fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 34,
                    ),
                    const Opacity(
                      opacity: .7,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.car_crash_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 11),
                              Text(
                                "Prices incl. VAT. ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "plus shipping costs",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )
                            ],
                          ),
                          SizedBox(height: 11),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Aenean commodo ligula eget dolor, Aenean massa.",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text("Choose Color",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFF333742),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFFFFFFFF),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0XFFFFFFFF), width: 1),
                            color: const Color(0XFFED5454),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 87,
            child: Column(
              children: [
                Image.asset(
                  alignment: Alignment.topCenter,
                  "images/PS5HEADSETW.png",
                  width: 267,
                  height: 267,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 96,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0XFF333742),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Container(
                      height: 50,
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0XFF454D5A)),
                      child: GestureDetector(
                        onTap: () {
                          // Get.snackbar("Add To Cart", "Button Clicked");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
