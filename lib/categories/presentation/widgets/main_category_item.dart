import 'package:flutter/material.dart';

class category_item extends StatelessWidget {
  const category_item({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Text(text),
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image.network(
            image,
            width: 158,
            height: 145,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
