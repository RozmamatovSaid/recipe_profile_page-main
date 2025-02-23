import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/sizes.dart';

import '../../../core/utils/app_colors.dart';

class profile_body_recipe extends StatelessWidget {
  const profile_body_recipe({
    super.key,
    required this.photo,
    required this.title,
    required this.description,
    required this.time,
    required this.rating,
  });

  final String photo, title, description;
  final int time;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                photo,
                fit: BoxFit.cover,
                width: 170 * AppSizes.wRatio,
                height: 130 * AppSizes.hRatio,
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.redPinkMain,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset("assets/icons/heart.svg"),
              ),
            ),
          ],
        ),
        Container(
          width: 150 * AppSizes.wRatio,
          height: 80 * AppSizes.hRatio,
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(14),
              bottomLeft: Radius.circular(14),
            ),
            border: Border.all(
              color: AppColors.pinkSub,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Text(
                maxLines: 2,
                description,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
              Row(
                spacing: 38,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          color: AppColors.pinkSub,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SvgPicture.asset("assets/icons/star.svg"),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/clock.svg",
                      ),
                      Text(
                        time.toString() + "min",
                        style: TextStyle(
                          color: AppColors.pinkSub,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
