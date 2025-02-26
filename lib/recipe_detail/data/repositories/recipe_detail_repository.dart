// import 'package:flutter/cupertino.dart';
// import 'package:new_recipe_app/category_detail/data/repositories/recipe_repoitory.dart';
// import 'package:new_recipe_app/recipe_detail/data/models/recipe_detail_model.dart';
//
// class RecipeDetailRepository extends ChangeNotifier{
//   final RecipeRepository _recipeRepo;
//   bool isLoading = true;
//   late final int recipeId;
//   late final RecipeDetailModel recipe;
//   Future<void> load() async {
//     isLoading = true;
//     notifyListeners();
//     recipe = await _recipeRepo.fetchRecipeById(recipeId);
//     isLoading = false;
//     notifyListeners();
//   }
// }
