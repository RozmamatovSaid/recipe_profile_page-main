import 'package:flutter/material.dart';
import 'package:new_recipe_app/categories/presentation/manager/categories_view_model.dart';

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
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image.network(
            image,
            width: 158,
            height: 145,
            fit: BoxFit.cover,
          ),
        ),
        Text(text),
      ],
    );
  }
}
