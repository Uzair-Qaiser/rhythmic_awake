import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_images.dart';
class PlaylistBarWidget extends StatelessWidget {
  const PlaylistBarWidget({super.key, required this.title, required this.img, required this.leading});
final String title;
final String img;
final String leading;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 11.h),
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r)
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(leading,style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(width: 8.w,),
          SvgPicture.asset(img),
          SizedBox(width: 8.w,),
          Text(title,style: Theme.of(context).textTheme.titleMedium,),
          const Spacer(),
          SvgPicture.asset(AppImages.videoSquare,height: 24.h,width: 24.w,fit: BoxFit.cover,),

        ],),);
  }
}
