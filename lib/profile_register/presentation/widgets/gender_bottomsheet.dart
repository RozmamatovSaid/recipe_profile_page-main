import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile_register/presentation/manager/profile_register_viewmodel.dart';

class GenderBottomSheet extends StatelessWidget {
  const GenderBottomSheet({
    super.key,
    required this.pvm,
  });

  final RegisterProfileViewModel pvm;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          "Gender",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.beigeColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        pvm.setGender("Male");
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Male",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        pvm.setGender("Female");
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Female",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            width: 358.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.pink,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.bottomLeft,
            child: Text(
              pvm.genderController.text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.beigeColor.withValues(alpha: 0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
