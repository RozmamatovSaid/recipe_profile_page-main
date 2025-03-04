import 'package:flutter/material.dart';
import 'package:new_recipe_app/categories/presentation/manager/categories_view_model.dart';
import 'package:new_recipe_app/categories/presentation/widgets/category_item.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key, required this.cvm});

  final CategoriesViewModel cvm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: cvm,
      builder: (context, _) {
        return Scaffold(
          appBar: AppBarWidget(
            title: "Categories",
            leading: "assets/icons/back-arrow.svg",
            firstAction: "assets/icons/notification.svg",
            secondAction: 'assets/icons/search.svg',
          ),
          body: ListView(
            children: [
              CategoryItem(
                image: cvm.mainCategory!.image,
                title: cvm.mainCategory!.title,
                isMain: true,
              ),
              SizedBox(height: 20),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: cvm.categories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    image: cvm.categories[index].image,
                    title: cvm.categories[index].title,
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
