import 'package:flutter/material.dart';
import 'package:new_recipe_app/login/presentation/widgets/show_dialog.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_elevated_button.dart';

class signup_button extends StatelessWidget {
  const signup_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return login_elevated_button(
      text: "Sign Up",
      callback: () {
        showDialog(
          context: context,
          builder: (context) => show_dialog(),
        );
      },
    );
  }
}
