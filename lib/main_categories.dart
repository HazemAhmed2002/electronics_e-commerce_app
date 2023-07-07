import 'package:electronics_ecommerce/view_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'view/card_shopping.dart';
import 'view/categories_home.dart';
import 'view/profile_screen.dart';

class MainCategoriesScreen extends StatefulWidget {
  const MainCategoriesScreen({super.key});

  @override
  State<MainCategoriesScreen> createState() => _MainCategoriesScreenState();
}

class _MainCategoriesScreenState extends State<MainCategoriesScreen> {
  List<String> title = [
    "Categories",
    "CardShopping",
    "Profile",
  ];

  List<Widget> screen = [
    const CategoriesHomeScreen(),
    const CardShoppingScreen(),
    const ProfileScreen(),
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
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewProductsScreen()),
                  );
                },
                icon: Icon(Icons.notification_add_rounded, color: Colors.white),
              ))
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
                text: "CardShopping",
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
