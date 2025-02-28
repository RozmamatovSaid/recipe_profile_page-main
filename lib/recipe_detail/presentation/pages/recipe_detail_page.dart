import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/core/widgets/bottom_nav_bar.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';
import 'package:new_recipe_app/recipe_detail/presentation/manager/recipe_detail_view_model.dart';
import 'package:new_recipe_app/recipe_detail/presentation/widgets/details_widget.dart';
import 'package:new_recipe_app/recipe_detail/presentation/widgets/food_widget.dart';
import 'package:new_recipe_app/recipe_detail/presentation/widgets/recipe_detail_main_text.dart';
import 'package:new_recipe_app/recipe_detail/presentation/widgets/recipe_detail_user_widget.dart';
import 'package:provider/provider.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<RecipeDetailViewModel>();
    if (vm.isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: AppBarWidget(
        title: "Chicken Curry",
        leading: "assets/icons/back-arrow.svg",
        firstAction: "assets/icons/heart.svg",
        secondAction: "assets/icons/share.svg",
      ),
      body: ListView(
        padding: EdgeInsets.only(right: 20, left: 20, top: 26, bottom: 120),
        children: [
          FoodWidget(vm: vm),
          SizedBox(height: 26),
          RecipeDetailUserWidget(vm: vm),
          SizedBox(height: 20),
          Container(
            height: 2,
            decoration: BoxDecoration(color: AppColors.pinkSub),
          ),
          SizedBox(height: 19),
          DetailsWidget(vm: vm),
          SizedBox(height: 31),
          RecipeDetailMainText(text: "Ingredient"),
          Column(children: vm.getIngredient()),
          SizedBox(height: 31),
          RecipeDetailMainText(
              text: "${vm.recipe.instructions.length} Easy Steps"),
          Column(
            children: vm.getInstructions(),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
