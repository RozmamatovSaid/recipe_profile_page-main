import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class bottom_shadow extends StatelessWidget {
  const bottom_shadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 128,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            AppColors.beigeColor,
            Colors.transparent,
          ],
        ),
      ),
    );
  }
}
