import 'package:flutter/cupertino.dart';
import 'package:new_recipe_app/categories/data/models/categories_model.dart';
import 'package:new_recipe_app/categories/data/repositories/category_repository.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel({required CategoryRepository repo}) : _repo = repo {
    load();
  }

  final CategoryRepository _repo;

  List<CategoryModel> categories = [];
  CategoryModel? mainCategory;

  Future<void> load() async {
    try {
      var allCategories = await _repo.fetchCategories();
      mainCategory = allCategories.where((category) => category.main).firstOrNull;
      categories = allCategories.where((category) => category.id != mainCategory?.id).toList();
    } finally {
      notifyListeners();
    }
  }
}
