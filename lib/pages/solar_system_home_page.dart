import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nist_flutter_project/pages/map.dart';
import 'package:nist_flutter_project/pages/settings.dart';
import 'package:nist_flutter_project/pages/solar_charge.dart';
import 'package:nist_flutter_project/pages/solar_system.dart';
import 'package:nist_flutter_project/widgets/bottom_icon_menu.dart';

class SolarSystemHomePage extends StatefulWidget {
  const SolarSystemHomePage({super.key});

  @override
  State<SolarSystemHomePage> createState() => _SolarSystemHomePageState();
}

class _SolarSystemHomePageState extends State<SolarSystemHomePage> {
  int index = 0;
  Uint8List? pickedImageMemory;
  File? file;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final iconMenuWidth = (screenSize.width / 2) - 40;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text(
          "Solar System",
        ),
        backgroundColor: Colors.orange,
      ),
      body: IndexedStack(
        index: index,
        children: [
          SolarSystem(
            image: pickedImageMemory,
            file: file,
          ),
          const MapPage(),
          const SolarCharge(),
          const Settings(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: iconMenuWidth - 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomIconMenu(
                    icon: Icons.home,
                    title: "Home",
                    selected: index == 0,
                    onPressed: () {
                      index = 0;
                      setState(() {});
                    },
                  ),
                  BottomIconMenu(
                    icon: Icons.map,
                    title: "Map",
                    selected: index == 1,
                    onPressed: () {
                      index = 1;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: iconMenuWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomIconMenu(
                    icon: Icons.solar_power,
                    title: "Solar Power",
                    selected: index == 2,
                    onPressed: () {
                      index = 2;
                      setState(() {});
                    },
                  ),
                  BottomIconMenu(
                    icon: Icons.settings,
                    title: "Settings",
                    selected: index == 3,
                    onPressed: () {
                      index = 3;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final imagePicker = ImagePicker();
          final pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
          if (pickedImage != null) {
            final fileName = pickedImage.name;
            final filePath = pickedImage.path;
            final fileLength = await pickedImage.length();
            final imageData = await pickedImage.readAsBytes();
            debugPrint("file Name : $fileName");
            debugPrint("file path  : $filePath");
            debugPrint("file length  : $fileLength");
            pickedImageMemory = imageData;
            setState(() {
              file = File(filePath);
            });
          }
        },
        backgroundColor: Colors.orange,
        shape: CircleBorder(),
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
