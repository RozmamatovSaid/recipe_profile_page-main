import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/core/utils/theme.dart';
import 'package:new_recipe_app/onboarding/data/repositories/onboarding_repository.dart';
import 'package:new_recipe_app/onboarding/presentation/manager/onboarding_view_model.dart';
import 'package:new_recipe_app/onboarding/presentation/pages/onboarding_end.dart';
import 'package:new_recipe_app/onboarding/presentation/pages/onboarding_page.dart';
import 'package:new_recipe_app/profile/data/repositories/profile_repository.dart';
import 'package:new_recipe_app/profile/data/repositories/recipes_repository.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_page.dart';
import 'package:new_recipe_app/profile/presentation/pages/profile_view_model.dart';

void main() => runApp(MyApp());

final GoRouter _router = GoRouter(
  initialLocation: '/onboarding',
  routes: [
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfilePage(
        vm: ProfileViewModel(
          recipeRepo: RecipeRepository(
            client: ApiClient(),
          ),
          profileRepo: ProfileRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnboardingPage(
        ovm: OnBoardingViewModel(
          repo: OnBoardingRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/onboarding_end',
      builder: (context, state) => OnboardingEnd(
        pvm: ProfileViewModel(
          recipeRepo: RecipeRepository(
            client: ApiClient(),
          ),
          profileRepo: ProfileRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp.router(
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
