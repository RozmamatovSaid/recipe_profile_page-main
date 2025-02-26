import '../../../core/client.dart';
import '../models/recipes_model.dart';

class BodyRecipesRepo {
  BodyRecipesRepo({required this.client});

  final ApiClient client;

  List<RecipesModel> recipesModel = [];

  Future<List<RecipesModel>> fetchRecipes() async {
    var rawRecipes = await client.fetchRecipes();
    recipesModel =
        rawRecipes.map((json) => RecipesModel.fromJson(json)).toList();
    return recipesModel;
  }
}
