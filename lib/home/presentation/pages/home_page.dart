import 'package:flutter/material.dart';
import 'package:new_recipe_app/home/presentation/pages/home_page_app_bar.dart';
import 'package:new_recipe_app/home/presentation/pages/trending_recipe_widget.dart';
import 'package:new_recipe_app/home/presentation/pages/your_recipes_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      body: ListView(
        children: [
          TrendingRecipeWidget(),
          SizedBox(height: 19),
          YourRecipesWidget(),
        ],
      ),
    );
  }
}
