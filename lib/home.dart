import 'package:flutter/material.dart';
import 'package:nist_flutter_project/widgets/custom_scaffold.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Home",
      body: Text("Home Page"),
      onOressedLeadingButton: (ctx) {
        Scaffold.of(ctx).openDrawer();
      },
    );
  }
}