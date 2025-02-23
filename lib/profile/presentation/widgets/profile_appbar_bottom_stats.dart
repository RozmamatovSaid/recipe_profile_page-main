import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';
import 'package:new_recipe_app/profile/presentation/widgets/bottom_stats.dart';

class profile_appbar_bottom_stats extends StatelessWidget {
  const profile_appbar_bottom_stats({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.beigeColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          width: 2,
          color: AppColors.pink,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          bottom_stats(
            number: vm.myProfile!.recipeCount,
            subtitle: "Recipes",
          ),
          Container(height: 26, width: 2, color: AppColors.pink),
          bottom_stats(
            number: vm.myProfile!.followingCount,
            subtitle: "Following",
          ),
          Container(height: 26, width: 2, color: AppColors.pink),
          bottom_stats(
            number: vm.myProfile!.followerCount,
            subtitle: "Followers",
          ),
        ],
      ),
    );
  }
}
