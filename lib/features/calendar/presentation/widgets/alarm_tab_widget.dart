import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/alarm_card.dart';
import '../../../../shared/widgets/small_btn.dart';
import '../../../alarms/routes/alarm_routes.dart';
class AlarmTabWidget extends StatefulWidget {
  const AlarmTabWidget({super.key});

  @override
  State<AlarmTabWidget> createState() => _AlarmTabWidgetState();
}

class _AlarmTabWidgetState extends State<AlarmTabWidget> {
  List<bool> alarmStates = [true, true, false, true];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 56.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Alarms",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SmallBtn(func: () {
            context.pushNamed(AlarmRoutes.addAlarm);
          }, text: 'New Alarm'),
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
    ],);
  }
}
