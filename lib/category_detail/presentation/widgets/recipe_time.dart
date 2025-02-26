import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/category_detail/data/models/recipe_model.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeTime extends StatelessWidget {
  const RecipeTime({
    super.key,
    required this.timeRequired,
  });

  final int timeRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text(
          '${timeRequired.toString()}min',
          style: TextStyle(
            color: AppColors.pinkSub,
            fontSize: 12,
          ),
        ),
        SvgPicture.asset('assets/icons/clock.svg'),
      ],
    );
  }
}
