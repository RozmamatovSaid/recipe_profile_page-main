import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/onboarding/data/models/onboarding_model.dart';
import 'package:new_recipe_app/onboarding/presentation/manager/onboarding_view_model.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/elevatedbutton_widget.dart';

class button_positioned extends StatelessWidget {
  const button_positioned({
    super.key,
    required this.ovm,
    required this.index,
  });

  final OnBoardingViewModel ovm;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 47,
      child: elevatedbutton_widget(
        text: 'Continue',
        onPressed: () {
          if (ovm.pages.length - 1 == index) {
            context.go('/onboarding_end');
          }
          ovm.controller.nextPage(
              duration: Duration(microseconds: 300), curve: Curves.linear);
        },
      ),
    );
  }
}
