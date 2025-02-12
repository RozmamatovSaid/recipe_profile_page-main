import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/onboarding/data/models/onboarding_model.dart';

class OnBoardingRepository {
  OnBoardingRepository({required this.client});

  final ApiClient client;

  List<OnBoardingModel> pages = [];

  Future<List<OnBoardingModel>> fetchOnBoarding() async {
    if (pages.isNotEmpty) return pages;
    var rawPages = await client.fetchOnBoarding();
    pages = rawPages.map((page) => OnBoardingModel.fromJson(page)).toList();
    return pages;
  }
}
