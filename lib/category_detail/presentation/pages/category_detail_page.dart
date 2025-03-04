import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/widgets/bottom_nav_bar.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_app_bar_bottom.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_item.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';

import '../manager/category_detail_view_model.dart';

class CategoryDetailPage extends StatelessWidget {
  const CategoryDetailPage({super.key, required this.vm});

  final CategoryDetailViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) {
        if (vm.isLoading) {
          return Center(
              child: CircularProgressIndicator(color: AppColors.redPinkMain));
        } else {
          return Scaffold(
            appBar: AppBarWidget(
              title: vm.selected.title,
              leading: "assets/icons/back-arrow.svg",
              firstAction: "assets/icons/notification.svg",
              secondAction: "assets/icons/search.svg",
              bottom: RecipeAppBarBottom(vm: vm),
            ),
            body: GridView.builder(
              padding:
                  EdgeInsets.only(right: 20.w, left: 20.w, top: 36.h, bottom: 120.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 226, mainAxisSpacing: 30),
              itemCount: vm.recipes.length,
              itemBuilder: (context, index) =>
                  RecipeItem(recipe: vm.recipes[index]),
            ),
            extendBody: true,
            bottomNavigationBar: BottomNavBar(),
          );
        }
      },
    );
  }
}
