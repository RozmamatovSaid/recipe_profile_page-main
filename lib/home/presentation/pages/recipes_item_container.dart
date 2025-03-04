import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_rating.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_time.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipesItemContainer extends StatelessWidget {
  const RecipesItemContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image(
            image: AssetImage("assets/images/breakfast.png"),
            width: 168.w,
            height: 162.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            width: 168.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.milkWhite,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Breakfast",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecipeRating(rating: 5),
                    RecipeTime(timeRequired: 15, color: AppColors.redPinkMain),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
