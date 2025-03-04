import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_action_container.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.leading,
    required this.firstAction,
    required this.secondAction,
    this.bottom,
    this.toolbarHeight = 72,
  });

  final String title;
  final String leading;
  final String firstAction;
  final String secondAction;
  final double toolbarHeight;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize {
    final double? bottomHeight = bottom?.preferredSize.height;
    final height =
        bottomHeight == null ? toolbarHeight : bottomHeight + toolbarHeight;
    return Size(double.infinity, height);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
      child: AppBar(
        toolbarHeight: 72.h,
        backgroundColor: AppColors.beigeColor,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(leading),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.redPinkMain),
        ),
        actions: [
          Row(
            spacing: 10,
            children: [
              AppBarActionContainer(
                svg: firstAction,
                callback: () {},
              ),
              AppBarActionContainer(
                svg: secondAction,
                callback: () {},
              ),
            ],
          ),
        ],
        bottom: bottom,
      ),
    );
  }
}
