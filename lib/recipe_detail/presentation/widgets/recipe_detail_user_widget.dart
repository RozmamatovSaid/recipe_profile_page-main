import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/recipe_detail/presentation/manager/recipe_detail_view_model.dart';

class RecipeDetailUserWidget extends StatelessWidget {
  const RecipeDetailUserWidget({
    super.key,
    required this.vm,
  });

  final RecipeDetailViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 31,
              backgroundImage: NetworkImage(vm.recipe.user.profilePhoto),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@${vm.recipe.user.username}',
                  style: TextStyle(color: AppColors.redPinkMain, fontSize: 18),
                ),
                Text(
                    "${vm.recipe.user.lastName} ${vm.recipe.user.firstName} - Chef"),
              ],
            )
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    vm.isFollowing ? AppColors.redPinkMain : AppColors.pink,
              ),
              onPressed: () {
                vm.ButtonPressed();
              },
              child: Text(
                vm.isFollowing ? "Follow" : "Following",
                style: TextStyle(
                    color: vm.isFollowing
                        ? AppColors.pink
                        : AppColors.redPinkMain),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: AppColors.redPinkMain),
            ),
          ],
        ),
      ],
    );
  }
}
