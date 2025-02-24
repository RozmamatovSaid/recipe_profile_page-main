import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class ActionsTextButton extends StatelessWidget {
  const ActionsTextButton({
    super.key,
    required this.text,
    required this.callback,
  });

  final String text;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
