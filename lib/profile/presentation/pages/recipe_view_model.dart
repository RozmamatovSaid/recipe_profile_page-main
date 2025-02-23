import 'package:flutter/cupertino.dart';
import 'package:new_recipe_app/profile/data/models/recipes_model.dart';
import 'package:new_recipe_app/profile/data/repositories/recipes_repository.dart';

class RecipeViewModel extends ChangeNotifier {
  RecipeViewModel({required RecipeRepository recipeRepo})
      : _recipeRepo = recipeRepo {
    load();
  }

  final RecipeRepository _recipeRepo;
  List<RecipesModel>? myRecipe;

  Future<void> load() async {
    myRecipe = await _recipeRepo.fetchRecipes();
    notifyListeners();
  }
}
