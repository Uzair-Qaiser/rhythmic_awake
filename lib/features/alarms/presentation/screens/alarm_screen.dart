import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import '../../../../shared/widgets/small_btn.dart';
import '../widgets/alarm_card.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.avatar,
                    height: 40.h,
                    width: 40.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GoodNight John',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontSize: 11.sp),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Don’t miss anything by reminder',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    AppImages.alarmNotification,
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
              SizedBox(height: 57.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alarms",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SmallBtn(func: () {}, text: 'New Alarm'),
                ],
              ),
              SizedBox(height: 24.h),
              AlarmCard(bgImg: AppImages.spotify, songImg: AppImages.spotifyCol,),
              AlarmCard(bgImg: AppImages.apple, songImg: AppImages.appleCol,),
              AlarmCard(bgImg: AppImages.spotify, songImg: AppImages.spotifyCol,),
              AlarmCard(bgImg: AppImages.spotify, songImg: AppImages.spotifyCol,),
            ],
          ),
        ),
      ),
    );
  }
}
