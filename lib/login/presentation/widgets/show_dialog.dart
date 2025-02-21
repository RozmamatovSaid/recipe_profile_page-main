import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class show_dialog extends StatelessWidget {
  const show_dialog({
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
          width: 250,
          height: 286,
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
                width: 82,
                height: 82,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(41),
                  color: AppColors.Pink,
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
                      fontSize: 13),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
