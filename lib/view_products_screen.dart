import 'package:flutter/material.dart';

import 'customWidget/custom_grid_view.dart';

class ViewProductsScreen extends StatelessWidget {
  ViewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF333742),
      appBar: AppBar(
        backgroundColor: const Color(0xff333742),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ))
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
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
          CustomGridView(),
        ],
      ),
    );
  }
}
