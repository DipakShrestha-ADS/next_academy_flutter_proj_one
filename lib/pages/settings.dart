import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: const Center(
        child: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}