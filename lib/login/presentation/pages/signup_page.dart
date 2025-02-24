import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/manager/sign_up_viewmodel.dart';
import 'package:new_recipe_app/login/presentation/widgets/actions_language_textbutton.dart';
import 'package:new_recipe_app/login/presentation/widgets/show_data_picker.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';
import 'package:new_recipe_app/login/presentation/widgets/signup_button.dart';
import 'package:new_recipe_app/login/presentation/widgets/textformfield_widget.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(
        authRepo: context.read(),
      ),
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.beigeColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SignUp",
            style: TextStyle(),
          ),
          // actions: [Icon(Icons. )],
        ),
        body: ListView(
          padding: EdgeInsets.only(
            right: 37,
            left: 37,
          ),
          children: [
            SizedBox(height: 70),
            Form(
              key: context.read<SignUpViewModel>().formKey,
              child: Column(
                spacing: 9,
                children: [
                  textformfield_widget(
                    text: "Full Name",
                    hintText: "Said",
                    validator: (value) => null,
                    controller:
                        context.read<SignUpViewModel>().firstNameController,
                  ),
                  textformfield_widget(
                    text: "Last Name",
                    hintText: "Ro'zmamatov",
                    validator: (value) => null,
                    controller:
                        context.read<SignUpViewModel>().lastNameController,
                  ),
                  textformfield_widget(
                    text: "User Name",
                    hintText: "Chef - Said",
                    validator: (value) => null,
                    controller:
                        context.read<SignUpViewModel>().userNameController,
                  ),
                  textformfield_widget(
                    text: "Email",
                    hintText: "caidcode@gmail.com",
                    validator: (value) => null,
                    controller: context.read<SignUpViewModel>().emailController,
                  ),
                  textformfield_widget(
                    text: "Mobile Number",
                    hintText: "+ 998 33 033 51 33",
                    validator: (value) => null,
                    controller:
                        context.read<SignUpViewModel>().phoneNumberController,
                  ),
                  show_data_picker(),
                  textformfield_widget(
                    text: "Password",
                    hintText: " ● ● ● ● ● ● ● ●  ",
                    password: true,
                    controller:
                        context.read<SignUpViewModel>().passwordController,
                    validator: (value) {
                      if (context
                              .read<SignUpViewModel>()
                              .passwordController
                              .text !=
                          context
                              .read<SignUpViewModel>()
                              .confirmPasswordController
                              .text) {
                        return "Both passwords must be the same.";
                      } else {
                        return null;
                      }
                    },
                  ),
                  textformfield_widget(
                    text: "Confirm Password",
                    hintText: " ● ● ● ● ● ● ● ● ",
                    password: true,
                    controller: context
                        .read<SignUpViewModel>()
                        .confirmPasswordController,
                    validator: (value) => null,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              onPressed: () {},
              child: Text(
                "    By continuing, you agree to\nTerms of Use and Privacy Policy.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 12),
            signup_button(),
            SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: Text(
                "Already have an account?  Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
