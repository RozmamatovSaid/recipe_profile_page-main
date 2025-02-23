import 'package:flutter/material.dart';
import 'package:new_recipe_app/onboarding/data/models/onboarding_model.dart';
import 'package:new_recipe_app/onboarding/data/repositories/onboarding_repository.dart';

class OnBoardingViewModel extends ChangeNotifier {
  OnBoardingViewModel({required OnBoardingRepository repo}) : _repo = repo {
    load();
  }

  final PageController controller = PageController();
  final OnBoardingRepository _repo;
  int currentIndex = 0;

  List<OnBoardingModel> pages = [];

  Future<void> load() async {
    pages = await _repo.fetchOnBoarding();
    notifyListeners();
  }

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
