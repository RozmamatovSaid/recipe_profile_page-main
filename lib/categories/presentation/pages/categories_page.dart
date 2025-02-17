import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/categories/presentation/manager/categories_view_model.dart';
import 'package:new_recipe_app/categories/presentation/widgets/category_item.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key, required this.cvm});

  final CategoriesViewModel cvm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: cvm,
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            leading: Center(
              child: SvgPicture.asset(
                "assets/icons/back-arrow.svg",
              ),
            ),
            title: Text(
              "Categories",
              style: TextStyle(color: AppColors.ReddishPink),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: cvm.categories.length,
                itemBuilder: (context, index) {
                  return category_item(
                    image: cvm.categories[index].image,
                    text: cvm.categories[index].title,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
