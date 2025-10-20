import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/features/timer/presentation/widgets/timer_bar_widget.dart';
import 'package:rhythmic_awake/shared/widgets/custom_btn.dart';

import '../../../../shared/widgets/outlined_btn.dart';
import '../widgets/song_bar_widget.dart';


class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,child:  Text('Timer',style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 18.sp),) ,),
                SizedBox(height: 57.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(16.r)),
                  child:   Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 30.w),
                        child: CupertinoTheme(
                            data: CupertinoThemeData(
                              textTheme: CupertinoTextThemeData(
                                  dateTimePickerTextStyle:Theme.of(context).textTheme.headlineMedium
                              ),
                              brightness: Brightness.dark,
                            ),
                            child:Theme(
                                data: ThemeData.dark().copyWith(
                                  colorScheme: ColorScheme.dark().copyWith(
                                    surface: Colors.transparent,
                                  ),
                                ),child: CupertinoTimerPicker(
                              onTimerDurationChanged: (val) {
                              },
                            ))),
                      ),
                      SizedBox(height: 12.h,),
                      SongBarWidget(),
                      SizedBox(height: 21.h,),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedBtn(text: 'Cancel', onTap: () {  },),
                        CustomBtn(
                          width: 129.w,
                            text: "Start", onTap: (){})
                      ],),
                      SizedBox(height: 19.h,),
                    ],
                  ),),
                SizedBox(height: 50.h,),
                Text("Past Timers",style: Theme.of(context).textTheme.headlineLarge,),
                SizedBox(height: 16.h,),
                TimerBarWidget(timerText: '00 : 06 : 30', platformIcon: AppImages.spotifyCol),
                SizedBox(height: 16.h,),
                TimerBarWidget(timerText: '00 : 06 : 30', platformIcon: AppImages.yt),
                SizedBox(height: 16.h,),
                TimerBarWidget(timerText: '01 : 02 : 30', platformIcon: AppImages.spotifyCol),
                SizedBox(height: 16.h,),
                TimerBarWidget(timerText: '00 : 06 : 30', platformIcon: AppImages.yt),
                SizedBox(height: 16.h,),
                TimerBarWidget(timerText: '00 : 06 : 30', platformIcon: AppImages.spotifyCol),
                SizedBox(height: 16.h,),
            ]
          ),
        ),
            ),
      ));
  }
}
