import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class RecipeAppBarBottomItem extends StatelessWidget {
  const RecipeAppBarBottomItem({
    super.key,
    required this.title,
    required this.callback,
    required this.isSelected,
  });

  final bool isSelected;
  final String title;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: isSelected ? AppColors.redPinkMain : Colors.transparent,
          borderRadius: BorderRadius.circular(18)),
      alignment: Alignment.center,
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: callback,
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? AppColors.pink : AppColors.redPinkMain,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
