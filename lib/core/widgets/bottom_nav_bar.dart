import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 281,
          height: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            color: AppColors.redPinkMain,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/home.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/community.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/category_item.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/profile.svg')),
            ],
          ),
        ),
        SizedBox(height: 33),
      ],
    );
  }
}
