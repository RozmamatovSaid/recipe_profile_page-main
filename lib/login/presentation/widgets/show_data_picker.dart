import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_recipe_app/core/l10n/app_localizations.dart';
import 'package:new_recipe_app/core/utils/app_colors.dart';
import 'package:new_recipe_app/login/presentation/manager/sign_up_viewmodel.dart';
import 'package:provider/provider.dart';

class show_data_picker extends StatelessWidget {
  const show_data_picker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var date = context.select((SignUpViewModel vm) => vm.selectedDate);
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MyLocalizations.of(context)!.dateOfBirth,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () async {
            context.read<SignUpViewModel>().selectedDate = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 357.w,
            height: 49.h,
            decoration: BoxDecoration(
              color: AppColors.pink,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              date == null
                  ? "DD/MM/YYYY"
                  : "${date.day}/${date.month}/${date.year}",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.beigeColor.withValues(alpha: date == null ? 0.5 : 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
