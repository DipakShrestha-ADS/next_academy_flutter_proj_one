import 'package:flutter/material.dart';

class FruitDetails extends StatelessWidget {
  const FruitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final data = (ModalRoute.of(context)!.settings.arguments ?? {}) as Map<String, dynamic>;
    final fruitName = data['name'];
    final index = data['index'];
    return Scaffold(
      appBar: AppBar(
        title: Text("$fruitName Details $index"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.abc),
        ),
      ),
      body: Text(
        "All Details here",
      ),
    );
  }
}
