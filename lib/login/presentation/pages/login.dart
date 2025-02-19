import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/manager/login_view_model.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_elevated_button.dart';
import 'package:new_recipe_app/login/presentation/widgets/textformfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.vm});

  final LoginViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MainColor,
      appBar: login_appbar_widget(title: 'login'),
      body: ListView(
        padding: EdgeInsets.only(top: 90, right: 30, left: 30),
        children: [
          Form(
            key: vm.formKey,
            child: Column(
              spacing: 10,
              children: [
                textformfield_widget(
                  text: 'Login',
                  hintText: 'example@example.com',
                  controller: vm.loginController,
                ),
                textformfield_widget(
                  text: "Password",
                  hintText: "● ● ● ● ● ● ● ●",
                  controller: vm.passwordController,
                ),
                SizedBox(height: 40),
                login_elevated_button(
                  text: 'Log In',
                  callback: () async {
                    if (vm.formKey.currentState!.validate() &&
                        context.mounted) {
                      if (await vm.login()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("BANZAYYYYYYYYYY"),
                          ),
                        );
                        context.go('/SignUp');
                      }
                    }
                  },
                ),
                SizedBox(height: 10),
                login_elevated_button(
                  text: 'Sign Up',
                  callback: () {
                    context.go("/SignUp");
                  },
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:
                          SvgPicture.asset("assets/icons_login/instagram.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons_login/google.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons_login/facebook.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons_login/watsapp.svg"),
                    ),
                  ],
                ),
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
              ],
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
