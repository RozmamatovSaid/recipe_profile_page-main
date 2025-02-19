import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_elevated_button.dart';
import 'package:new_recipe_app/login/presentation/widgets/textformfield_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.MainColor,
      appBar: login_appbar_widget(title: 'Sign Up'),
      body: ListView(
        padding: EdgeInsets.only(right: 37, left: 37, top: 60),
        children: [
          Form(
            child: Column(
              spacing: 9,
              children: [
                textformfield_widget(text: "Full Name", hintText: "John Doe"),
                textformfield_widget(
                    text: "Email", hintText: "example@example.com"),
                textformfield_widget(
                    text: "Mobile Number", hintText: "+ 123 456 789"),
                textformfield_widget(
                    text: "Date of birth", hintText: "DD / MM /YYY"),
                textformfield_widget(
                    text: "Password", hintText: " ● ● ● ● ● ● ● ●  "),
                textformfield_widget(
                    text: "Confirm Password", hintText: " ● ● ● ● ● ● ● ● "),
              ],
            ),
          ),
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
          login_elevated_button(
            text: "Sign Up",
            callback: () {},
          ),
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
    );
  }
}
