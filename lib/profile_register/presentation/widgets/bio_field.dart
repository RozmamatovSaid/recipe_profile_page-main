import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile_register/presentation/manager/profile_register_viewmodel.dart';
import 'package:provider/provider.dart';

class bio_field extends StatelessWidget {
  const bio_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var rvm = context.watch<RegisterProfileViewModel>();
    return SizedBox(
      width: 200,
      height: 150,
      child: TextField(
        controller: rvm.bioController,
        maxLength: 100,
        expands: true,
        maxLines: null,
        minLines: null,
        style: TextStyle(
          color: AppColors.beigeColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          floatingLabelStyle: TextStyle(
            color: AppColors.beigeColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          hintStyle: TextStyle(
            color: AppColors.beigeColor.withValues(alpha: 0.5),
          ),
          hintText: "About yourself",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          fillColor: AppColors.pink,
          filled: true,
        ),
      ),
    );
  }
}
