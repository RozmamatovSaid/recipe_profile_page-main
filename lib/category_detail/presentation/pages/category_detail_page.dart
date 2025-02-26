import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_item.dart';
import 'package:new_recipe_app/category_detail/presentation/widgets/recipe_app_bar_bottom.dart';
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
                  EdgeInsets.only(right: 20, left: 20, top: 36, bottom: 120),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 226, mainAxisSpacing: 30),
              itemCount: vm.recipes.length,
              itemBuilder: (context, index) =>
                  RecipeItem(recipe: vm.recipes[index]),
            ),
            extendBody: true,
            bottomNavigationBar: Column(
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
                          icon: SvgPicture.asset(
                              'assets/icons/category_item.svg')),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/profile.svg')),
                    ],
                  ),
                ),
                SizedBox(height: 33),
              ],
            ),
          );
        }
      },
    );
  }
}
