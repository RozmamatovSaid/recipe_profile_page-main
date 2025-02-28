import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeRating extends StatelessWidget {
  const RecipeRating({
    super.key,
    required this.rating,
    this.textColor = AppColors.redPinkMain,
    this.svgColor = AppColors.redPinkMain,
  });

  final num rating;
  final Color textColor;
  final Color svgColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text(
          rating.toString(),
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
        SvgPicture.asset(
          'assets/icons/star.svg',
          colorFilter: ColorFilter.mode(svgColor, BlendMode.srcIn),
        ),
      ],
    );
  }
}
