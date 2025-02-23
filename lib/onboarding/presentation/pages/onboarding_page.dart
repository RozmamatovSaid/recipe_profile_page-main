import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/onboarding/presentation/manager/onboarding_view_model.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/onboarding_appbar.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/onboarding_image_and_gradient.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/button_positioned.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/top_shadow.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.ovm});

  final OnBoardingViewModel ovm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: ovm,
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.beigeColor,
        appBar: OnboardingAppBar(
          currentIndex: ovm.currentIndex,
        ),
        body: PageView.builder(
          controller: ovm.controller,
          itemCount: ovm.pages.length + 1,
          onPageChanged: (index) {
            ovm.updateIndex(index);
          },
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.bottomCenter,
            children: [
              onboarding_imageAndGradient(ovm: ovm, index: index),
              bottom_shadow(),
              button_positioned(
                ovm: ovm,
                index: index,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
