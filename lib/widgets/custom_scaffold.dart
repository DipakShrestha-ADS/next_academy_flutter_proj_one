import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    this.body,
    this.onOressedLeadingButton,
    this.leadingIcon,
  });
  final String title;
  final Widget? body;

  //call back function for leading button
  final void Function(BuildContext)? onOressedLeadingButton;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              onOressedLeadingButton?.call(context);
            },
            icon: Icon(leadingIcon ?? Icons.menu),
          );
        }),
      ),
      drawer: Drawer(),
      body: body ??
          const Center(
            child: Text('Page not found'),
          ),
    );
  }
}