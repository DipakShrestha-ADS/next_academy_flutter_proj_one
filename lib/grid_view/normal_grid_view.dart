import 'dart:math';

import 'package:flutter/material.dart';

class NormalGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 6,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   // mainAxisExtent: 100,
      //   childAspectRatio: 1.8,
      // ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      scrollDirection: Axis.horizontal,
      children: List.generate(
        20,
        (index) {
          final random = Random();
          final red = random.nextInt(255);
          final green = random.nextInt(255);
          final blue = random.nextInt(255);
          return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(red, green, blue, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://images.unsplash.com/photo-1570913149827-d2ac84ab3f9a?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
