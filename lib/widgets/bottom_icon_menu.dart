import 'package:flutter/material.dart';

class BottomIconMenu extends StatelessWidget {
  const BottomIconMenu({
    super.key,
    required this.icon,
    required this.title,
    this.onPressed,
    this.selected = false,
  });
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      visualDensity: VisualDensity.compact,
      iconSize: 20,
      padding: EdgeInsets.zero,
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: getSelectedColor(selected),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: getSelectedColor(selected),
            ),
          )
        ],
      ),
    );
  }

  Color getSelectedColor(bool selected) {
    return selected ? Colors.white : Colors.black;
  }
}
