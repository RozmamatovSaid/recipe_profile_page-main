import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class social_networks extends StatelessWidget {
  const social_networks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons_login/instagram.svg"),
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
    );
  }
}
