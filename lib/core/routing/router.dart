import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/routing/routes.dart';
import 'package:new_recipe_app/profile_register/presentation/pages/profile_register.dart';
import 'package:new_recipe_app/recipe_details/presentation/pages/recipe_details_page.dart';
import '../../categories/data/repositories/categories_repository.dart';
import '../../categories/presentation/manager/categories_view_model.dart';
import '../../categories/presentation/pages/categories_page.dart';
import '../../login/data/repositories/auth_repository.dart';
import '../../login/presentation/manager/login_view_model.dart';
import '../../login/presentation/pages/login_page.dart';
import '../../login/presentation/pages/signup_page.dart';
import '../../onboarding/data/repositories/onboarding_repository.dart';
import '../../onboarding/presentation/manager/onboarding_view_model.dart';
import '../../onboarding/presentation/pages/onboarding_end.dart';
import '../../onboarding/presentation/pages/onboarding_page.dart';
import '../../profile/data/repositories/profile_repository.dart';
import '../../profile/data/repositories/recipes_repository.dart';
import '../../profile/presentation/pages/profile_page.dart';
import '../../profile/presentation/pages/profile_view_model.dart';
import '../client.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: Routes.signup,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginPage(
        vm: LoginViewModel(
          repo: AuthRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => SignUp(),
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
      path: Routes.onboarding,
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
      path: Routes.categories,
      builder: (context, state) => CategoriesPage(
        cvm: CategoriesViewModel(
          repo: CategoriesRepository(
            client: ApiClient(),
          ),
        ),
      ),
    ),
    GoRoute(
        path: Routes.registerProfile,
        builder: (context, state) => RegisterProfile()),
    GoRoute(
      path: Routes.recipeDetails,
      builder: (context, state) => RecipeDetailsPage(),
    ),
  ],
);
