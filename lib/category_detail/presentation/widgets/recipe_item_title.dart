import 'package:flutter/material.dart';
import 'package:new_recipe_app/category_detail/data/models/recipe_model.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeItemTitle extends StatelessWidget {
  const RecipeItemTitle({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipe.title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: AppColors.beigeColor,
        fontSize: 12,
      ),
    );
  }
}
