import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class textformfield_widget extends StatelessWidget {
  const textformfield_widget({
    super.key,
    required this.text,
    required this.hintText,
    this.controller,
    this.validator,
  });

  final String text;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

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
        SizedBox(
          width: 357,
          height: 41,
          child: TextFormField(
            maxLines: 1,
            controller: controller,
            validator: validator,
            // onTap: ,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: AppColors.MainColor.withValues(alpha: 0.3),
              ),
              fillColor: AppColors.Pink,
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
                color: AppColors.MainColor.withValues(alpha: 0.5),
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
        )
      ],
    );
  }
}
