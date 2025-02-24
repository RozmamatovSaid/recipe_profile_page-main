import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_recipe_app/core/l10n/app_localizations.dart';
import 'package:new_recipe_app/core/l10n/app_localizations_en.dart';
import 'package:new_recipe_app/core/sizes.dart';
import 'package:new_recipe_app/login/presentation/manager/sign_up_viewmodel.dart';
import 'package:provider/provider.dart';
import 'core/dependencies.dart' show providers;
import 'core/routing/router.dart';
import 'core/utils/theme.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MultiProvider(
      providers: providers,
      builder: (context, child) => MaterialApp.router(
        theme: AppThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          MyLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("uz"),
          Locale("en"),
        ],
        locale: context.watch<SignUpViewModel>().currentLocale,
      ),
    );
  }
}
