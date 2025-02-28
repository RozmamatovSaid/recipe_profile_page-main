import 'package:new_recipe_app/category_detail/data/repositories/recipe_repoitory.dart';
import 'package:new_recipe_app/core/client.dart';
import 'package:new_recipe_app/core/localization_viewmodel.dart';
import 'package:new_recipe_app/login/data/repositories/auth_repository.dart';
import 'package:new_recipe_app/login/presentation/manager/sign_up_viewmodel.dart';
import 'package:new_recipe_app/onboarding/data/repositories/onboarding_repository.dart';
import 'package:new_recipe_app/onboarding/presentation/manager/onboarding_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  Provider(
    create: (context) => ApiClient(),
  ),
  Provider(
    create: (context) => AuthRepository(
      client: context.read(),
    ),
  ),
  ChangeNotifierProvider(
    create: (context) => SignUpViewModel(
      authRepo: AuthRepository(
        client: context.read(),
      ),
    ),
  ),
  Provider(
    create: (context) => OnBoardingViewModel(
      repo: OnBoardingRepository(
        client: context.read(),
      ),
    ),
  ),
  Provider(
    create: (context) => RecipeRepository(
      client: context.read(),
    ),
  ),
  ChangeNotifierProvider(create: (context) => LocalizationViewModel()),
];
