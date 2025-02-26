import 'package:flutter/material.dart';
import 'package:new_recipe_app/categories/data/models/categories_model.dart';
import 'package:new_recipe_app/categories/data/repositories/category_repository.dart';
import '../../data/models/recipe_model.dart';
import '../../data/repositories/recipe_repoitory.dart';

class CategoryDetailViewModel with ChangeNotifier {
  CategoryDetailViewModel(
      {required CategoryRepository catRepo,
      required RecipeRepository recipeRepo})
      : _catRepo = catRepo,
        _recipeRepo = recipeRepo;

  final CategoryRepository _catRepo;
  final RecipeRepository _recipeRepo;
  List<CategoryModel> categories = [];
  List<RecipeModel> recipes = [];
  bool isLoading = true;
  late CategoryModel _selected;

  CategoryModel get selected => _selected;

  set selected(CategoryModel model) {
    _selected = model;
    fetchRecipesByCategory(_selected.id);
    notifyListeners();
  }

  Future<void> fetchRecipesByCategory(int categoryId) async {
    recipes = await _recipeRepo.fetchRecipesByCategory(selected.id);
    notifyListeners();
  }

  Future<void> load() async {
    isLoading = true;
    notifyListeners();
    categories = await _catRepo.fetchCategories();
    selected = categories.first;
    recipes = await _recipeRepo.fetchRecipesByCategory(selected.id);
    isLoading = false;
    notifyListeners();
  }
}
