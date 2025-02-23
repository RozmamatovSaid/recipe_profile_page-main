import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class OnboardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardingAppBar({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.beigeColor,
      leading: currentIndex > 0
          ? IconButton(
              onPressed: () {
                context.pop();
              },
              icon: SvgPicture.asset(
                "assets/icons/back-arrow.svg",
                width: 30,
                height: 20,
                fit: BoxFit.cover,
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
