import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
class TimerBarWidget extends StatelessWidget {
  const TimerBarWidget({super.key, required this.timerText, required this.platformIcon});
final String timerText;
final String platformIcon;
  @override
  Widget build(BuildContext context) {
    return  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),color: AppColors.transparentColor),
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
      child: Row(children: [
        Text(timerText,style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 14.sp,),),
        SizedBox(width: 12.w,),
        SvgPicture.asset(platformIcon,height: 24.h,width: 24.w,fit: BoxFit.cover,),
        SizedBox(width: 8.w,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The Black Belts',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium,
            ),
            SizedBox(height: 2.h),
            Text(
              'Don\'t Fade Away',
              style: Theme.of(
                context,
              ).textTheme.titleMedium,
            ),
          ],),
        const Spacer(),
        SvgPicture.asset(AppImages.refreshIcon,height: 24.h,width: 24.w,fit: BoxFit.cover,),
        SizedBox(width: 7.w,),
        SvgPicture.asset(AppImages.videoSquare,height: 24.h,width: 24.w,fit: BoxFit.cover,),

      ],),);
  }
}
