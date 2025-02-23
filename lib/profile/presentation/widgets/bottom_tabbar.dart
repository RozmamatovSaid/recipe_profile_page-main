import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class bottom_tabbar extends StatelessWidget {
  const bottom_tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.redPinkMain,
      tabs: [
        Text(
          "Recipe",
          style: TextStyle(
            color: AppColors.milkWhite,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "Favorites",
          style: TextStyle(
            color: AppColors.milkWhite,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
