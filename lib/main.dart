import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/categories/data/repositories/categories_repository.dart';
import 'package:new_recipe_app/categories/presentation/manager/categories_view_model.dart';
import 'package:new_recipe_app/categories/presentation/pages/categories_page.dart';
import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/core/utils/theme.dart';
import 'package:new_recipe_app/login/presentation/pages/login.dart';
import 'package:new_recipe_app/login/presentation/pages/sign_up.dart';
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
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => SignUp(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => Login(),
    ),
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
    GoRoute(
      path: '/categories',
      builder: (context, state) => CategoriesPage(
        cvm: CategoriesViewModel(
          repo: CategoriesRepository(
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
