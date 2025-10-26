import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/features/alarms/routes/alarm_routes.dart';
import '../../../../shared/widgets/app_bg.dart';
import '../../../../shared/widgets/small_btn.dart';
import '../../../../shared/widgets/alarm_card.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  List<bool> alarmStates = [true, true, false, true];

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
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
                          'Don\'t Miss Anything By Reminder',
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
                    SmallBtn(
                      func: () {
                        context.pushNamed(AlarmRoutes.addAlarm);
                      },
                      text: 'New Alarm',
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                AlarmCard(
                  bgImg: AppImages.spotify,
                  songImg: AppImages.spotifyCol,
                  isEnabled: alarmStates[0],
                  onToggle: (value) {
                    setState(() {
                      alarmStates[0] = value;
                    });
                  },
                ),
                AlarmCard(
                  bgImg: AppImages.apple,
                  songImg: AppImages.appleCol,
                  isEnabled: alarmStates[1],
                  onToggle: (value) {
                    setState(() {
                      alarmStates[1] = value;
                    });
                  },
                ),
                AlarmCard(
                  bgImg: AppImages.spotify,
                  songImg: AppImages.spotifyCol,
                  isEnabled: alarmStates[2],
                  onToggle: (value) {
                    setState(() {
                      alarmStates[2] = value;
                    });
                  },
                ),
                AlarmCard(
                  bgImg: AppImages.spotify,
                  songImg: AppImages.spotifyCol,
                  isEnabled: alarmStates[3],
                  onToggle: (value) {
                    setState(() {
                      alarmStates[3] = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
