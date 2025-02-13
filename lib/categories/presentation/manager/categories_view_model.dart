import 'package:flutter/cupertino.dart';
import 'package:new_recipe_app/categories/data/models/categories_model.dart';
import 'package:new_recipe_app/categories/data/repositories/categories_repository.dart';

class CategoriesViewModel extends ChangeNotifier {
  CategoriesViewModel({required CategoriesRepository repo}) : _repo = repo {
    load();
  }

  final CategoriesRepository _repo;

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
