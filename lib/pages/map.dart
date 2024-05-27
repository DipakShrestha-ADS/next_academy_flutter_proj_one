import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          "Map",
          style: TextStyle(
            color: Colors.black,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}