import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class HomeAppBarBottomItem extends StatefulWidget
    implements PreferredSizeWidget {
  const HomeAppBarBottomItem({super.key});

  @override
  _HomeAppBarBottomItemState createState() => _HomeAppBarBottomItemState();

  @override
  Size get preferredSize => const Size(double.infinity, 40);
}

class _HomeAppBarBottomItemState extends State<HomeAppBarBottomItem> {
  final List<String> foods = [
    'Breakfast',
    'Lunch',
    'Dinner',
    'Vegan',
    'Dessert',
    'Drinks',
    'Sea Food'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: selectedIndex == index ? AppColors.redPinkMain : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  foods[index],
                  style: TextStyle(
                    color: selectedIndex == index ? AppColors.milkWhite : AppColors.redPinkMain,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
