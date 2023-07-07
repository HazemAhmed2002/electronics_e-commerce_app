import 'package:flutter/material.dart';

class CardShoppingScreen extends StatelessWidget {
  const CardShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Card Shopping",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      backgroundColor: Color(0xff333742),
    );
  }
}
