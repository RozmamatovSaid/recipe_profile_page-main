import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/routing/routes.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/onboarding/presentation/widgets/elevatedbutton_widget.dart';
import 'package:new_recipe_app/profile_register/presentation/manager/profile_register_viewmodel.dart';

class continue_button extends StatelessWidget {
  const continue_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: elevatedbutton_widget(
        text: "Continue",
        onPressed: () {
          context.go(Routes.category_detail);
        },
        backgroundColor: AppColors.redPinkMain,
        textColor: AppColors.pink,
      ),
    );
  }
}
