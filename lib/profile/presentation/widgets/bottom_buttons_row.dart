import 'package:flutter/material.dart';
import 'package:new_recipe_app/profile/presentation/widgets/profile_elevated_button.dart';

class bottom_buttons_row extends StatelessWidget {
  const bottom_buttons_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        profile_elevated_button(text: 'Edit Profile'),
        profile_elevated_button(text: 'Share Profile'),
      ],
    );
  }
}
