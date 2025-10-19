import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../core/theme/app_colors.dart';


class OtpInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onCompleted;

  const OtpInputWidget({
    super.key,
    required this.controller,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: Pinput(
        length: 5,
        controller: controller,
        onCompleted: (pin) => onCompleted(pin),
        defaultPinTheme: PinTheme(
          width: 48.w,
          height: 47.h,
          textStyle: Theme.of(context).textTheme.titleLarge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.darkGrey,
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 48.w,
          height: 47.h,
          textStyle: Theme.of(context).textTheme.titleLarge,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.whiteColor),
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
