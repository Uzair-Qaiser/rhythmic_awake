import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/app_colors.dart';
class AlarmCard extends StatelessWidget {
  const AlarmCard({super.key, required this.bgImg, required this.songImg});
final String bgImg;
final String songImg;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Stack(
          children: [
            Container(
              height: 193.h,
              width: ScreenUtil().screenWidth,
              color: Color.fromRGBO(75, 79, 137, 0.55),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: SvgPicture.asset(
                bgImg,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 16.w,
              left: 16.w,
              bottom: 16.h,
              top: 16.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alarm #1',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '06 : 30 AM',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      Transform.scale(
                        scaleX: 0.65,
                        scaleY: 0.6,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (val) {},
                          activeTrackColor: AppColors.darkGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Snooze Type',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Circle of consciousness',
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      SizedBox(width: 50.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Snooze Interval',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Every 20 Minutes',
                            style: Theme.of(
                              context,
                            ).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Container(padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 6.h),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),color: Colors.white.withValues(alpha: 0.1)),
                    child: Row(children: [
                      SvgPicture.asset(songImg,height: 24.h,width: 24.w,fit: BoxFit.cover,),
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
                        ],)
                    ],),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
