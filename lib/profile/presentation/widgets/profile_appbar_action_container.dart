import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class profile_appbar_action_container extends StatelessWidget {
  const profile_appbar_action_container({super.key, required this.svg});

  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: AppColors.Pink,
        borderRadius: BorderRadius.circular(14),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(svg),
    );
  }
}
