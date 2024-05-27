import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.description,
    this.onTapEyeButton,
  });
  final String title;
  final String subtitle;
  final String imageUrl;
  final String description;
  final void Function()? onTapEyeButton;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Card(
          margin: EdgeInsets.zero,
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: 350,
              // height: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageUrl,
                            height: 120,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const FractionallySizedBox(
                        widthFactor: 0.05,
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              subtitle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton.small(
            onPressed: () {
              if (onTapEyeButton != null) {
                onTapEyeButton!();
                return;
              }
              showDialog(
                context: context,
                builder: (ctx) {
                  return AlertDialog(
                    scrollable: true,
                    content: Text(
                      description,
                    ),
                    title: Text(
                      "Description View:",
                    ),
                    actions: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pop(ctx);
                        },
                        child: Text(
                          "Close",
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            backgroundColor: Colors.white.withOpacity(0.4),
            child: const Icon(
              Icons.remove_red_eye,
            ),
          ),
        ),
      ],
    );
  }
}
