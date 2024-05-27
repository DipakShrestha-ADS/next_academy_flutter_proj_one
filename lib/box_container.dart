import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  String text = "Hello Class";
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250,
      color: Colors.brown,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "${text.toUpperCase()} $count",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print("button clicked");
                count = count + 1;
              },
              child: Text(
                "Click Me",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
