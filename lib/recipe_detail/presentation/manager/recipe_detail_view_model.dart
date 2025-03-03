import 'package:flutter/cupertino.dart';
import '../../../category_detail/data/repositories/recipe_repoitory.dart';
import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_detail_model.dart';

class RecipeDetailViewModel extends ChangeNotifier {
  RecipeDetailViewModel({
    required RecipeRepository recipeRepo,
    required this.recipeId,
  }) : _recipeRepo = recipeRepo {
    load();
  }

  final RecipeRepository _recipeRepo;
  bool isLoading = true;
  final int recipeId;

  late final RecipeDetailModel recipe;

  bool _isFollowing = false;

  bool get isFollowing => _isFollowing;

  Future<void> load() async {
    isLoading = true;
    notifyListeners();
    recipe = await _recipeRepo.fetchRecipeById(recipeId);
    isLoading = false;
    notifyListeners();
  }

  void ButtonPressed() {
    _isFollowing = !_isFollowing;
    notifyListeners();
  }

  List<Widget> getInstructions() {
    return recipe.instructions.map((instruction) {
      return Column(
        children: [
          SizedBox(height: 11),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            height: 81,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: instruction.order % 2 == 0
                  ? AppColors.pink
                  : AppColors.pinkSub,
            ),
            child: Text(
              "${instruction.order}. ${instruction.text}",
              style: TextStyle(
                color: AppColors.beigeColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    }).toList();
  }

  List<Widget> getIngredient() {
    return recipe.ingredients.map((ingredient) {
      return Row(
        children: [
          Text(
            "• ${ingredient.amount}",
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          Text(
            " ${ingredient.name}",
            style: TextStyle(
              color: AppColors.milkWhite,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    }).toList();
  }
  
}
