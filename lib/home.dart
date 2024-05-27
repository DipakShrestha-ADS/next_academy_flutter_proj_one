import 'package:flutter/material.dart';
import 'package:nist_flutter_project/fruits_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.list,
            ),
            onPressed: () {
              isGrid = false;
              setState(() {});
            },
          ),
          IconButton(
            onPressed: () {
              isGrid = true;
              setState(() {});
            },
            icon: const Icon(
              Icons.grid_3x3,
            ),
          ),
        ],
      ),
      body: FruitsPage(
        isGrid: isGrid,
      ),
    );
  }
}
