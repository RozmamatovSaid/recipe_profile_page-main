import 'package:new_recipe_app/categories/data/models/categories_model.dart';
import 'package:new_recipe_app/core/client.dart';

class CategoryRepository {
  CategoryRepository({required this.client});

  final ApiClient client;

  List<CategoryModel> categoriesModel = [];

  Future<List<CategoryModel>> fetchCategories() async {
    var rawCategories = await client.fetchCategories();

    categoriesModel =
        rawCategories.map((json) => CategoryModel.fromJson(json)).toList();

    return categoriesModel;
  }
}
