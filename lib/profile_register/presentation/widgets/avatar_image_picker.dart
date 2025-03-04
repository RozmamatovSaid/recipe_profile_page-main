import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/profile_register/presentation/manager/profile_register_viewmodel.dart';
import 'package:provider/provider.dart';

class avatar_image_picker extends StatelessWidget {
  const avatar_image_picker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: context.read<RegisterProfileViewModel>().image !=
                    null
                ? FileImage(context.watch<RegisterProfileViewModel>().image!)
                : null,
            backgroundColor: AppColors.pink,
            maxRadius: 60,
            child: context.watch<RegisterProfileViewModel>().image == null
                ? SvgPicture.asset(
                    "assets/Person.svg",
                    width: 80.w,
                    height: 80.h,
                  )
                : null,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.redPinkMain,
                borderRadius: BorderRadius.circular(
                  9,
                ),
              ),
              child: GestureDetector(
                child: Icon(Icons.edit),
                onTap: () => Provider.of<RegisterProfileViewModel>(context,
                        listen: false)
                    .pickImage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
