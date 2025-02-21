import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/manager/login_view_model.dart';
import 'package:new_recipe_app/login/presentation/widgets/signup_button.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_appbar_widget.dart';
import 'package:new_recipe_app/login/presentation/widgets/textformfield_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key, required this.vm});

  final LoginViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MainColor,
      appBar: login_appbar_widget(title: 'Sign Up'),
      body: ListView(
        padding: EdgeInsets.only(right: 37, left: 37, top: 60),
        children: [
          SizedBox(height: 70),
          Form(
            child: Column(
              spacing: 9,
              children: [
                textformfield_widget(text: "Full Name", hintText: "John Doe"),
                textformfield_widget(
                    text: "Email", hintText: "example@example.com"),
                textformfield_widget(
                    text: "Mobile Number", hintText: "+ 123 456 789"),
                Column(
                  children: [
                    Text("Date Of Birth"),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        width: 357,
                        height: 41,
                        decoration: BoxDecoration(color: AppColors.Pink),
                        child: GestureDetector(),
                      ),
                    ),
                  ],
                ),
                textformfield_widget(
                    text: "Password", hintText: " ● ● ● ● ● ● ● ●  "),
                textformfield_widget(
                    text: "Confirm Password", hintText: " ● ● ● ● ● ● ● ● "),
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
    );
  }
}
