import 'package:flutter/material.dart';
import 'package:new_recipe_app/category_detail/data/models/recipe_model.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeItemDescription extends StatelessWidget {
  const RecipeItemDescription({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipe.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: AppColors.beigeColor,
        fontSize: 13,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
