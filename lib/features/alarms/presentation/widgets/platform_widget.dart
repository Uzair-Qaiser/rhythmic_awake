import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/app_colors.dart';
class PlatformWidget extends StatelessWidget {
  const PlatformWidget({super.key, required this.icon, required this.title});
final String icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.5.w,
      height: 42.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 9.h),
      decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(8.r)),
      child: Row(children: [
        SvgPicture.asset(icon,height: 24.h,width: 24.w,fit: BoxFit.cover,),
        SizedBox(width: 8.w,),
        Text(title,style: Theme.of(context).textTheme.titleMedium,),
      ],),);
  }
}
