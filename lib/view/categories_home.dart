import 'package:flutter/material.dart';

import '../customWidget/custom_text_field.dart';

class CategoriesHomeScreen extends StatefulWidget {
  const CategoriesHomeScreen({super.key});

  @override
  State<CategoriesHomeScreen> createState() => _CategoriesHomeScreenState();
}

class _CategoriesHomeScreenState extends State<CategoriesHomeScreen> {
  List<String> items = [
    "All",
    "PS5",
    "PS4",
    "Xbox One",
    "Xbox One x",
  ];

  int index = 0;

  void changeValueOfIndex(int value) {
    setState(() {
      index = value;
    });
  }

  List<Color> color = [
    const Color(0Xff0FF333742),
    const Color(0xFFFFFFFF),
    const Color(0xFFED5454),
  ];

  chanvalueOfIndex(int value) {
    setState(() {
      index = value;
    });
  }

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff333742),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                  height: 30,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              changeValueOfIndex(index);
                            },
                            child: Stack(
                              alignment: Alignment.topLeft,
                              clipBehavior: Clip.none,
                              children: [
                                this.index == index
                                    ? const Positioned(
                                        top: 1,
                                        child: CircleAvatar(
                                          radius: 3,
                                          backgroundColor: Colors.white,
                                        ))
                                    : Container(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    items[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 60,
                          ),
                      itemCount: items.length),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomTextField(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                        AssetImage('images/filters.png'),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 50),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 450,
                        child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  decoration: const BoxDecoration(
                                      color: Color(0XFF454D5A),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  width: 310,
                                  height: 500,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Sony',
                                              style: TextStyle(
                                                  color: Colors.grey[300]),
                                            ),
                                            const SizedBox(
                                              width: 193.0,
                                            ),
                                            IconButton(
                                                onPressed: null,
                                                icon: IconButton(
                                                  icon: const Icon(
                                                      Icons.favorite_border),
                                                  color: Colors.grey[400],
                                                  onPressed: () {},
                                                ))
                                          ],
                                        ),
                                        Text(
                                          'Playstation 5',
                                          style: TextStyle(
                                              color: Colors.grey[300],
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        const Image(
                                          image: AssetImage(
                                              'images/ps5-photo.png'),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 15.0,
                                                    height: 15.0,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5.0))),
                                                  ),
                                                  const SizedBox(
                                                    height: 10.0,
                                                  ),
                                                  Container(
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    5.0))),
                                                    width: 15.0,
                                                    height: 15.0,
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 100.0,
                                            ),
                                            Container(
                                              width: 130,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[500],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              10.0))),
                                              child: const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '\$890.00',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    Text(
                                                      '\$900.00',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.0),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
