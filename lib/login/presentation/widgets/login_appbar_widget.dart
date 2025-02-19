import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class login_appbar_widget extends StatelessWidget
    implements PreferredSizeWidget {
  const login_appbar_widget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size(double.infinity, 60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.MainColor,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.ReddishPink),
      ),
    );
  }
}
