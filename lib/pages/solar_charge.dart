import 'package:flutter/material.dart';

class SolarCharge extends StatelessWidget {
  const SolarCharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          "Solar Charge",
          style: TextStyle(
            color: Colors.white,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}