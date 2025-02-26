import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile_register/presentation/manager/profile_register_viewmodel.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/continue_button.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/avatar_image_picker.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/bio_field.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/gender_bottomsheet.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/sub_title.dart';
import 'package:new_recipe_app/profile_register/presentation/widgets/title.dart';
import 'package:provider/provider.dart';

class RegisterProfile extends StatelessWidget {
  const RegisterProfile({super.key});

  @override
  Widget build(BuildContext context) {

    final pvm = context.watch<RegisterProfileViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 36),
        children: [
          title(),
          SizedBox(height: 10),
          sub_title(),
          SizedBox(height: 44),
          avatar_image_picker(),
          GenderBottomSheet(pvm: pvm),
          SizedBox(height: 20),
          bio_field(),
          SizedBox(height: 200),
          continue_button(),
        ],
      ),
    );
  }
}
