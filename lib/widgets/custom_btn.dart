import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/theme/app_colors.dart';
class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 47.h,
      width: 308.w,
      decoration: BoxDecoration(
        color: AppColors.limeGreenColor,
        borderRadius: BorderRadius.circular(16.r),),
      child: Center(child: Text(text,style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.blueColor),)),
    );
  }
}
