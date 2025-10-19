import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/text_field_widget.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        CustomTextField(
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.name,
          labelText: "First Name",
          controller: TextEditingController(),),
        SizedBox(height: 16.h),
        CustomTextField(
          textCapitalization: TextCapitalization.words,
          keyboardType: TextInputType.name,
          labelText: "Last Name",
          controller: TextEditingController(),),
        SizedBox(height: 16.h),
        CustomTextField(
          labelText: "Birthday",
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: SvgPicture.asset(AppImages.calenderIcon,height: 12.h,width: 12.w,)),
          controller: TextEditingController(),),
        SizedBox(height: 16.h), CustomTextField(
          keyboardType: TextInputType.emailAddress,
          labelText: "Email Address",
          controller: TextEditingController(),),
        SizedBox(height: 16.h),
        CustomTextField(
          keyboardType: TextInputType.phone,
          labelText: "Phone Number",
          subLabel: " (Used for account recovery purposes)",
          controller: TextEditingController(),),
        SizedBox(height: 16.h),
        CustomTextField(
          labelText: "Password",
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,)), hintText: '', controller: TextEditingController(),
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          labelText: "Confirm Password",
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,)), hintText: '', controller: TextEditingController(),
        ),
        SizedBox(height: 24.h,),

      ],
    );
  }
}
