import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_body_recipe.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

import '../../../core/utils/app_colors.dart';
import '../widgets/profile_page_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.vm,
  });

  final ProfileViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.beigeColor,
          appBar: ProfilePageAppBar(vm: vm),
          body: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 50,
                ),
                itemCount: vm.myRecipe!.length,
                itemBuilder: (context, index) {
                  return profile_body_recipe(
                    photo: vm.myRecipe![index].photo,
                    title: vm.myRecipe![index].title,
                    description: vm.myRecipe![index].description,
                    time: vm.myRecipe![index].timeRequired,
                    rating: vm.myRecipe![index].rating,
                  );
                },
              ),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
