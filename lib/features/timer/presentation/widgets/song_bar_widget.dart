import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_images.dart';
class SongBarWidget extends StatelessWidget {
  const SongBarWidget({super.key,});
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 6.h),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),color: Colors.white.withValues(alpha: 0.1)),
      child: Row(children: [
        SvgPicture.asset(AppImages.yt,height: 24.h,width: 24.w,fit: BoxFit.cover,),
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
        Row(children: [
          SvgPicture.asset(AppImages.octagon,height: 16.h,width: 16.w,fit: BoxFit.cover,),
          SizedBox(width: 12.w,),
          SvgPicture.asset(AppImages.edit,height: 16.h,width: 16.w,fit: BoxFit.cover,),
        ],)
      ],),
    );
  }
}
