import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Container(
        width: 80,height:100,
        color: Colors.red,
      ),
      Container(
        width: 80,height:100,
        color: Colors.yellow,
      ),
      Container(
        width: 80,height:100,
        color: Colors.green,
      ),
      Container(
        width: 80,height:100,
        color: Colors.blue,
      ),
      Container(
        width: 80,height:100,
        color: Colors.red,
      ),
      Container(
        width: 80,height:100,
        color: Colors.yellow,
      ),
      Container(
        width: 80,height:100,
        color: Colors.green,
      ),
      Container(
        width: 80,height:100,
        color: Colors.blue,
      ),
    ]);
  }
}
