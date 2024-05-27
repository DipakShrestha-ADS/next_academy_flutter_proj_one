import 'dart:math';

import 'package:flutter/material.dart';

class MultiListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      separatorBuilder: (ctx, index) {
        return SizedBox(
          height: 20,
        );
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 10,
          color: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              separatorBuilder: (ctx, index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemBuilder: (ctx, index) {
                var red = 255;
                var green = 0;
                var blue = 0;
                final random = Random();
                red = random.nextInt(255);
                green = random.nextInt(255);
                blue = random.nextInt(255);
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, red, green, blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
            ),
          ),
        );
        return Card(
          elevation: 10,
          child: ListTile(
            leading: Text(
              "${index + 1}.",
            ),
            title: Text(
              "Title $index lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit.",
            ),
            subtitle: Text(
              "Subtitle $index lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit. lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit. lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet consectetur adipiscing elit.",
            ),
            trailing: Icon(
              Icons.home,
            ),
            onTap: () {
              print("list tile tapped $index");
            },
          ),
        );
        return Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${index + 1}.",
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Title",
                      ),
                      Text(
                        "Description",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
