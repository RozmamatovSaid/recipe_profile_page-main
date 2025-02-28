import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_rating.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/recipe_detail/presentation/manager/recipe_detail_view_model.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    super.key,
    required this.vm,
  });

  final RecipeDetailViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 356,
      height: 337,
      decoration: BoxDecoration(
        color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                vm.recipe.photo,
                width: double.infinity,
                height: 281,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  vm.recipe.title,
                  style: TextStyle(
                    color: AppColors.milkWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    RecipeRating(
                      rating: vm.recipe.rating,
                      textColor: AppColors.milkWhite,
                      svgColor: AppColors.milkWhite,
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/sms.svg",
                          colorFilter: ColorFilter.mode(
                              AppColors.milkWhite, BlendMode.srcIn),
                        ),
                        Text(
                          vm.recipe.timeRequired.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
