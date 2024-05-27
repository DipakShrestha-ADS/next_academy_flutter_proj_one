import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuilderGridview extends StatelessWidget {
  const BuilderGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) {
        return Container(
          color: Colors.red,
          child: SvgPicture.asset(
            'assets/c.svg',
          ),
        );
        // return Container(
        //   color: Colors.red,
        //   child: Image.asset(
        //     'assets/c.svg',
        //   ),
        // );
      },
    );
  }
}
