import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'new/card_shoping.dart';
import 'new/categories_home.dart';
import 'new/profile_screen.dart';

class MainCategoriesScreen extends StatefulWidget {
  const MainCategoriesScreen({super.key});

  @override
  State<MainCategoriesScreen> createState() => _MainCategoriesScreenState();
}

class _MainCategoriesScreenState extends State<MainCategoriesScreen> {
  List<String> title = [
    "Categories",
    "CardShoping",
    "Profile",
  ];

  List<Widget> screen = [
    const CategoriesHomeScreen(),
    const CardShopingScreen(),
    const ProfileScreen(),
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333742),
      appBar: AppBar(
        backgroundColor: const Color(0xff333742),
        leading: const Icon(Icons.menu, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_rounded, color: Colors.white),
          )
        ],
        centerTitle: false,
        elevation: 0,
        title: Text(
          title[index],
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: screen[index],
      bottomNavigationBar: Container(
        height: 100,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: GNav(
            selectedIndex: index,
            onTabChange: (value) {
              changeValueOfIndex(value);
            },
            padding: const EdgeInsets.all(16),
            backgroundColor: const Color(0xff454D5A),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xFF333742),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.shopify,
                text: "CardShoping",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ]),
      ),
    );
  }
}
