import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_rating.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_time.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/home/presentation/pages/home_app_bar_bottom_item.dart';
import 'package:new_recipe_app/home/presentation/pages/recipes_item_container.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_appbar_action_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi! Said",
              style: TextStyle(
                color: AppColors.redPinkMain,
                fontWeight: FontWeight.w400,
                fontSize: 25.31,
              ),
            ),
            Text(
              "What are you cooking today",
              style: TextStyle(
                color: AppColors.milkWhite,
                fontWeight: FontWeight.w400,
                fontSize: 13.45,
              ),
            ),
          ],
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 38.w),
        titleSpacing: 38.w,
        actions: [
          AppBarActionContainer(
              svg: "assets/icons/notification.svg", callback: () {}),
          SizedBox(width: 5),
          AppBarActionContainer(
              svg: "assets/icons/search.svg", callback: () {}),
        ],
        bottom: HomeAppBarBottomItem(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
            child: Column(
              spacing: 9,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Recipe",
                  style: TextStyle(
                    color: AppColors.redPinkMain,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image(
                        image: AssetImage('assets/images/seafood.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      width: 350.w,
                      height: 49.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                        ),
                        border: Border(
                          left: BorderSide(color: AppColors.pinkSub),
                          right: BorderSide(color: AppColors.pinkSub),
                          bottom: BorderSide(color: AppColors.pinkSub),
                        ),
                        color: AppColors.beigeColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Salami and cheese pizza",
                                style: TextStyle(color: AppColors.milkWhite),
                              ),
                              RecipeTime(timeRequired: 30),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "This is a quick overview of the ingredients",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.milkWhite,
                                ),
                              ),
                              RecipeRating(
                                rating: 5,
                                svgColor: AppColors.pinkSub,
                                textColor: AppColors.pinkSub,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 19),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 38.w),
            width: double.infinity,
            height: 255,
            decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Recipes",
                  style: TextStyle(
                    color: AppColors.milkWhite,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RecipesItemContainer(),
                    RecipesItemContainer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
