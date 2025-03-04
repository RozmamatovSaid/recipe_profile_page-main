import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class ShowDialogPicker extends StatelessWidget {
  const ShowDialogPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 23,
            right: 37,
            left: 37,
            bottom: 43,
          ),
          width: 250.w,
          height: 286.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Sign Up ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Succesful',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                width: 82.w,
                height: 82.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41),
                  color: AppColors.pink,
                ),
                child: Center(
                  child: Icon(Icons.person_4_outlined),
                ),
              ),
              Center(
                child: Text(
                  "Lorem ipsum dolor sit amet pretium cras id dui pellentesque ornare. Quisque malesuada.",
                  maxLines: 4,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
