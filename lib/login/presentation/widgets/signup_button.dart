import 'package:flutter/material.dart';
import 'package:new_recipe_app/core/l10n/app_localizations.dart';
import 'package:new_recipe_app/login/presentation/manager/sign_up_viewmodel.dart';
import 'package:new_recipe_app/login/presentation/widgets/show_dialog.dart';
import 'package:new_recipe_app/login/presentation/widgets/login_elevated_button.dart';
import 'package:provider/provider.dart';

class signup_button extends StatelessWidget {
  const signup_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return login_elevated_button(
      text: MyLocalizations.of(context)!.signUp,
      callback: () async {
        if (context.read<SignUpViewModel>().formKey.currentState!.validate()) {
          if (await context.read<SignUpViewModel>().signUp(context) &&
              context.mounted) {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: ShowDialogPicker(),
              ),
            );
          }
        }
      },
    );
  }
}