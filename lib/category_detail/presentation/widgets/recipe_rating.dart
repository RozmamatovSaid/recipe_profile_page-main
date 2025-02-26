import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeRating extends StatelessWidget {
  const RecipeRating({
    super.key,
    required this.rating,
  });

  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text(
          rating.toString(),
          style: TextStyle(
            color: AppColors.pinkSub,
            fontSize: 12,
          ),
        ),
        SvgPicture.asset('assets/icons/star.svg'),
      ],
    );
  }
}
