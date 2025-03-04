import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/home/presentation/pages/home_app_bar_bottom_item.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_action_container.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi! Said",
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontWeight: FontWeight.w400,
              fontSize: 25.31,
            ),
          ),
          Text(
            "What are you cooking today",
            style: TextStyle(
              color: AppColors.milkWhite,
              fontWeight: FontWeight.w400,
              fontSize: 13.45,
            ),
          ),
        ],
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 38.w),
      titleSpacing: 38.w,
      actions: [
        AppBarActionContainer(
            svg: "assets/icons/notification.svg", callback: () {}),
        SizedBox(width: 5),
        AppBarActionContainer(svg: "assets/icons/search.svg", callback: () {}),
      ],
      bottom: HomeAppBarBottomItem(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 100);
}
