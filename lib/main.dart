import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nist_flutter_project/box_container.dart';
import 'package:nist_flutter_project/constants/datas.dart';
import 'package:nist_flutter_project/fruit_details.dart';
import 'package:nist_flutter_project/grid_view/builder_grid_view.dart';
import 'package:nist_flutter_project/grid_view/count_grid_view.dart';
import 'package:nist_flutter_project/grid_view/extent_grid_view.dart';
import 'package:nist_flutter_project/grid_view/normal_grid_view.dart';
import 'package:nist_flutter_project/home.dart';
import 'package:nist_flutter_project/list_view_builder_page.dart';
import 'package:nist_flutter_project/multi_list_view_example.dart';
import 'package:nist_flutter_project/my_card.dart';
import 'package:nist_flutter_project/my_card_list.dart';
import 'package:nist_flutter_project/pages/solar_system_home_page.dart';

void main() {
  runApp(MyApp());
}

class MobileLikeScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MobileLikeScrollBehaviour(),
      routes: {
        "fruit-details": (ctx) {
          return FruitDetails();
        },
        "/": (context) {
          return SolarSystemHomePage();
        },
      },
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
