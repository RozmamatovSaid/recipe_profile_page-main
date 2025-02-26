import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_action_container.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_bottom.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_leading.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_title.dart';

class ProfilePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfilePageAppBar({
    super.key,
    required this.vm,
  });

  @override
  Size get preferredSize => Size(double.infinity, 245 * AppSizes.hRatio);

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
      child: AppBar(
        leadingWidth: 102 * AppSizes.wRatio,
        toolbarHeight: 102 * AppSizes.hRatio,
        backgroundColor: AppColors.beigeColor,
        leading: profile_appbar_leading(vm: vm),
        title: profile_appbar_title(vm: vm),
        actions: [
          Align(
            child: AppBarActionContainer(
              svg: "assets/icons/plus.svg",
              callback: () {},
            ),
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Align(
            alignment: Alignment.topCenter,
            child: AppBarActionContainer(
              svg: "assets/icons/categories.svg",
              callback: () {},
            ),
          ),
        ],
        bottom: profile_appbar_bottom(vm: vm),
      ),
    );
  }
}
