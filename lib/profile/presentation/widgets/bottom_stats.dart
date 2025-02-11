import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class bottom_stats extends StatelessWidget {
  const bottom_stats({
    super.key, required this.number, required this.subtitle,
  });

  final int number;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            color: AppColors.milkWhite,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: AppColors.milkWhite,
            fontWeight: FontWeight.w400,
            fontSize: 12,
            height: 1,
          ),
        ),
      ],
    );
  }
}
