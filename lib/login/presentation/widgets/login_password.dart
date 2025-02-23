import 'package:flutter/material.dart';
import 'package:new_recipe_app/login/presentation/manager/login_view_model.dart';
import 'package:new_recipe_app/login/presentation/widgets/textformfield_widget.dart';

class login_body_form extends StatelessWidget {
  const login_body_form({
    super.key,
    required this.vm,
  });

  final LoginViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Form(
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
        ],
      ),
    );
  }
}
