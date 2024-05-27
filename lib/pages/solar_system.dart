import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class SolarSystem extends StatelessWidget {
  const SolarSystem({super.key, this.image, this.file});
  final Uint8List? image;
  final File? file;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Solar System",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 80,
                ),
              ),
            ),
            image == null
                ? const Icon(
                    Icons.image_not_supported,
                    size: 60,
                    color: Colors.white,
                  )
                : Image.memory(
                    image!,
                    height: 300,
                    width: 350,
                  ),
        
            file == null ? const Icon(
              Icons.image_not_supported,
              size: 60,
              color: Colors.blueGrey,
            ): Image.file(
              file!,
              height: 300,
              width: 350,
            ),
          ],
        ),
      ),
    );
  }
}
