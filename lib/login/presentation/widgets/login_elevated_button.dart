import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class login_elevated_button extends StatelessWidget {
  const login_elevated_button({
    super.key,
    required this.text,
    required this.callback,
  });

  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.Pink,
          fixedSize: Size(207, 45),
          foregroundColor: Colors.black.withValues(alpha: 0.5),
          overlayColor: Colors.cyanAccent,
          textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        onPressed: callback,
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.PinkSub,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
