import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/l10n/app_localizations.dart';
import 'package:new_recipe_app/core/localization_viewmodel.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/manager/login_view_model.dart';
import 'package:new_recipe_app/login/presentation/widgets/social_networks.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_password.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_elevated_button.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.vm});

  final LoginViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MyLocalizations.of(context)!.login,
          style: TextStyle(
            color: AppColors.redPinkMain,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 152.h, right: 30.w, left: 30.w),
        children: [
          login_body_form(vm: vm),
          SizedBox(height: 89),
          login_elevated_button(
            text: MyLocalizations.of(context)!.login,
            callback: () async {
              if (vm.formKey.currentState!.validate() && context.mounted) {
                if (await vm.login()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: AppColors.redPinkMain,
                      content: Text(
                        "SUCCESS",
                        style: TextStyle(color: AppColors.beigeColor),
                      ),
                    ),
                  );
                  context.go('/SignUp');
                }
              }
            },
          ),
          SizedBox(height: 10),
          login_elevated_button(
            text: MyLocalizations.of(context)!.signUp,
            callback: () {
              context.go("/SignUp");
            },
          ),
          SizedBox(height: 67.h),
          TextButton(
            onPressed: () {},
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            child: Text(
              "or sign up with",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
          ),
          social_networks(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Don’t have an account? Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
          ),
          if (vm.hasError)
            Text(
              vm.erorMessage!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }
}
