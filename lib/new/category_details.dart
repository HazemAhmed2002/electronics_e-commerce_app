import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF333742),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ))
          ],
          title: const Text('PULSE 3D Wireless Headset ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          backgroundColor: const Color(0XFF333742),
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text('PULSE 3D\nWireless Headset ',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(height: 10),
              const Opacity(
                opacity: .5,
                child: Text('Category Name ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(children: [
                    Opacity(
                        opacity: .5,
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                            Text("1.5K", style: TextStyle(color: Colors.white))
                          ],
                        )),
                    SizedBox(width: 15),
                    Opacity(
                        opacity: .5,
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                            Text(
                              "212",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                    SizedBox(width: 15),
                    Opacity(
                        opacity: .5,
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "120",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  ]),
                  Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Image.asset("images/PS5HEADSETW.png")
            ],
          ),
        ));
  }
}
