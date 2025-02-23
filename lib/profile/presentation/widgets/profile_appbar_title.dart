import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

class profile_appbar_title extends StatelessWidget {
  const profile_appbar_title({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170 * AppSizes.wRatio,
      height: 102 * AppSizes.hRatio,
      child: Column(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vm.myProfile!.fullName,
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Text(
            "@${vm.myProfile!.username}",
            style: TextStyle(
              color: AppColors.pinkSub,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          Text(
            vm.myProfile!.bio,
            maxLines: 3,
            softWrap: true,
            style: TextStyle(
              color: AppColors.milkWhite,
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
