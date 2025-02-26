import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/data/models/profile_model.dart';
import 'package:new_recipe_app/profile/data/models/recipes_model.dart';
import 'package:new_recipe_app/profile/data/repositories/profile_repository.dart';
import 'package:new_recipe_app/profile/data/repositories/recipes_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel({required this.recipeRepo, required this.profileRepo}) {
    load();
  }

  final BodyRecipesRepo recipeRepo;
  final ProfileRepository profileRepo;
  ProfileModel? myProfile;
  List<RecipesModel>? myRecipe;

  Future load() async {
    myProfile = await profileRepo.fetchMyProfile();
    myRecipe = await recipeRepo.fetchRecipes();
    notifyListeners();
  }
}
