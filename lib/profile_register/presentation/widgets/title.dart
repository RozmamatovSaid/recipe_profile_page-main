import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Complete your profile",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }
}
