import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nist_flutter_project/fruit_details.dart';

class FruitsPage extends StatelessWidget {
  FruitsPage({
    super.key,
    this.isGrid = false,
  });
  final bool isGrid;

  final fruits = [
    "Apple",
    "Orange",
    "Grapes",
    "Straberry",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (ctx, index) {
        final fr = fruits[index];
        return Card(
          elevation: 10,
          child: ListTile(
            leading: Text(
              "${index + 1}",
            ),
            title: Text(
              fr,
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   CupertinoPageRoute(
              //     builder: (ctx) {
              //       return FruitDetails();
              //     },
              //   ),
              // );
              Navigator.pushNamed(
                context,
                "fruit-details",
                arguments: {
                  "name": fr,
                  "index": index,
                },
              );
            },
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isGrid ? 2 : 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        // childAspectRatio: 4,
        mainAxisExtent: 80,
      ),
      itemCount: fruits.length,
    );
  }
}
