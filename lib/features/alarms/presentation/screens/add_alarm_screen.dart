import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/shared/widgets/custom_btn.dart';
import '../../../../shared/widgets/app_bg.dart';
import '../widgets/platform_widget.dart';


class AddAlarmScreen extends StatelessWidget {
  const AddAlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.transparent,
      leadingWidth: 80.w,
      leading:   TextButton(onPressed: (){
        context.pop();
      }, child: Text('Cancel',style: Theme.of(context).textTheme.titleSmall,)),
        title:  Text('Edit Alarm',style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 18.sp),) ,
      ),
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
                  SizedBox(height: 57.h),
                  Container(
                    height: 181.h,
                    padding: EdgeInsets.symmetric(horizontal:30.w),
                    decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(16.r)),
                    child:   CupertinoTheme(
                        data: CupertinoThemeData(
                          textTheme: CupertinoTextThemeData(
                              dateTimePickerTextStyle:Theme.of(context).textTheme.headlineMedium
                          ),
                          brightness: Brightness.dark,
                        ),
                        child:Theme(
          
                            data: ThemeData.dark().copyWith(
                              // This affects the selection overlay
                              colorScheme: ColorScheme.dark().copyWith(
                                surface: Colors.transparent,
                              ),
                            ),child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.time,
                          use24hFormat: false,
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime selectedTime) {
          
                          },
                        ))),),
                  SizedBox(height: 34.h,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PlatformWidget(icon: AppImages.spotifyCol, title: 'Spotify',),
                      PlatformWidget(icon: AppImages.appleCol, title: 'Apple Music',),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Align(alignment:Alignment.center,child: PlatformWidget(icon: AppImages.pandora, title: 'Pandora',)),
                  SizedBox(height: 24.h,),
                  Divider(color: AppColors.whiteColor.withValues(alpha: 0.6),height: 0,),
                  SizedBox(height: 24.h,),
                  Container(
                    height: 42.h,
                    decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.musicFilter,),
                      SizedBox(width: 8.w,),
                      Text('My Playlist',style: Theme.of(context).textTheme.titleMedium,)
                  ],),),
                  SizedBox(height: 16.h,),
                  Container(
                    height: 42.h,
                    decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.musicPlaylist,),
                        SizedBox(width: 8.w,),
                        Text('Stored Audio Files',style: Theme.of(context).textTheme.titleMedium,)
                      ],),),
                  SizedBox(height: 34.h,),
                  ListTile(minTileHeight: 0,
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    horizontalTitleGap: 12.w,
                    leading: Icon(Icons.check_box_outline_blank,color: Colors.white,size: 15.sp,),
                  title: Text('Add Countdown Feature. After alarm song plays, a 10 second count down will be activated',style: Theme.of(context).textTheme.titleSmall,),
                 trailing:SvgPicture.asset(AppImages.octagon,height: 16.h,width: 16.w,fit: BoxFit.cover,),
          
                  ),
                  SizedBox(height: 24.h,),
                  ListTile(minTileHeight: 0,
                    minVerticalPadding: 0,
                    minLeadingWidth: 0,
                    horizontalTitleGap: 12.w,
                    leading: Icon(Icons.check_box_outline_blank,color: Colors.white,size: 15.sp,),
                  title: Text('Add Daily Calendar To Do List Reading Assistant (Assistant reads to do list prior to starting song.)',style: Theme.of(context).textTheme.titleSmall,),
                 ),
                  SizedBox(height: 47.h,),
                  CustomBtn(
                    height:50.h,
                      width: ScreenUtil().screenWidth,
                      text: "Create Alarm", onTap: (){})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
