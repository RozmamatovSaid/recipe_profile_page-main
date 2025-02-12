import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

class onboarding_end_categories_widget extends StatelessWidget {
  const onboarding_end_categories_widget({
    super.key,
    required this.pvm,
  });

  final ProfileViewModel pvm;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 27,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              pvm.myRecipe![index].photo,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
