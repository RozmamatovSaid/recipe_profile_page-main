import 'package:flutter/material.dart';
import 'package:new_recipe_app/category_detail/data/models/recipe_model.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeItemImage extends StatelessWidget {
  const RecipeItemImage({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 169,
        height: 153,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.beigeColor.withValues(alpha: 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(
            recipe.photo,
            width: 169,
            height: 153,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
