import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeDetailMainText extends StatelessWidget {
  const RecipeDetailMainText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.redPinkMain,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
