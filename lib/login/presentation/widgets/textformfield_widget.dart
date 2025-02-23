import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class textformfield_widget extends StatelessWidget {
  const textformfield_widget({
    super.key,
    required this.text,
    required this.hintText,
    this.controller,
    this.validator,
    this.password = false,
  });

  final String text;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        TextFormField(
          obscureText: password,
          maxLines: 1,
          controller: controller,
          validator: validator,
          // onTap: ,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.beigeColor.withValues(alpha: 0.5),
            ),
            fillColor: AppColors.pink,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              gapPadding: 20,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(
                  width: 3, color: Colors.black.withValues(alpha: 0.5)),
            ),
          ),
          style: TextStyle(
              color: AppColors.beigeColor
                  .withValues(alpha: controller == null ? 0.5 : 1),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        )
      ],
    );
  }
}
