import 'package:flutter/material.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/onboarding_end_categories_widget.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/elevatedbutton_widget.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

class OnboardingEnd extends StatelessWidget {
  const OnboardingEnd({super.key, required this.pvm});

  final ProfileViewModel pvm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: pvm,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          body: pvm.myRecipe == null || pvm.myRecipe!.isEmpty
              ? Center(child: const CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    spacing: 11,
                    children: [
                      onboarding_end_categories_widget(pvm: pvm),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        maxLines: 3,
                        "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
                        style: TextStyle(fontSize: 13),
                      ),
                      elevatedbutton_widget(text: "I'm New", onPressed: () {}),
                      elevatedbutton_widget(
                          text: "I’ve been here ", onPressed: () {}),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
