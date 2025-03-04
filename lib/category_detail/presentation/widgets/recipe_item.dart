import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/category_detail/data/models/recipe_model.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_item_description.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_item_image.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_item_title.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_rating.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_time.dart';

class RecipeItem extends StatelessWidget {
  const RecipeItem({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
          width: 158.5,
          height: 76,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RecipeItemTitle(recipe: recipe),
              RecipeItemDescription(recipe: recipe),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecipeRating(rating: recipe.rating),
                  RecipeTime(timeRequired: recipe.timeRequired),
                ],
              ),
            ],
          ),
        ),
        RecipeItemImage(recipe: recipe),
      ],
    );
  }
}
