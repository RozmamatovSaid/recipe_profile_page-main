import 'package:new_recipe_app/recipe_detail/data/models/recipe_detail_ingredient_model.dart';
import 'package:new_recipe_app/recipe_detail/data/models/recipe_detail_instruction_model.dart';
import 'package:new_recipe_app/recipe_detail/data/models/recipe_detail_user_model.dart';

class RecipeDetailModel {
  final int id, categoryId;
  final String title, description;
  final String photo;
  final String videoRecipe;
  final int timeRequired;
  final num rating;
  final RecipeDetailUserModel user;
  final List<RecipeDetailInstructionModel> instructions;
  final List<RecipeDetailIngredientModel> ingredients;

  RecipeDetailModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.videoRecipe,
    required this.timeRequired,
    required this.rating,
    required this.user,
    required this.instructions,
    required this.ingredients,
  });

  factory RecipeDetailModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json['description'],
      photo: json['photo'],
      videoRecipe: json['videoRecipe'],
      timeRequired: json['timeRequired'],
      rating: json['rating'],
      user: RecipeDetailUserModel.fromJson(json['user']),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => RecipeDetailInstructionModel.fromJson(e))
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((ingredient) => RecipeDetailIngredientModel.fromJson(ingredient))
          .toList(),
    );
  }
}