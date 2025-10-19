import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/features/alarms/presentation/screens/alarm_screen.dart';
import 'package:rhythmic_awake/features/playlist/presentation/screens/playlist_screen.dart';
import 'package:rhythmic_awake/features/profile/presentation/screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget>_screens=[
    AlarmScreen(),
    PlaylistScreen(),
    PlaylistScreen(),
    PlaylistScreen(),
    ProfileScreen(),

  ];
  int _selectedIndex=0;
void  _changeIndex(int index){
    _selectedIndex=index;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 78.h,
        width: ScreenUtil().screenWidth,
        color: AppColors.blueColor,
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 14.h),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        spacing: 24.w,
        children: [
     _navItem(context: context, text: 'Alarms', selIcon: _selectedIndex==0?AppImages.selAlarm:AppImages.unSelAlarm,unSelIcon: AppImages.unSelAlarm, func: () { _changeIndex(0); }),
     _navItem(context: context, text: 'Playlist',selIcon: _selectedIndex==1?AppImages.selPlaylist:AppImages.unPlayList,unSelIcon: AppImages.unPlayList,func: () { _changeIndex(1); }),
     _navItem(context: context, text: 'Timer', selIcon: _selectedIndex==2?AppImages.selTimer:AppImages.unSelTimer,unSelIcon: AppImages.unSelTimer,func: () { _changeIndex(2); }),
     _navItem(context: context, text: 'Calendar', selIcon: _selectedIndex==3?AppImages.selCalendar:AppImages.unSelCalendar,unSelIcon: AppImages.unSelCalendar,func: () { _changeIndex(3); }),
     _navItem(context: context, text: 'Profile', selIcon: _selectedIndex==4?AppImages.selProfile:AppImages.unProfile,unSelIcon: AppImages.unProfile,func: () { _changeIndex(4); }),
      ],),),
      body:IndexedStack(index: _selectedIndex, children: _screens)
    );
  }

  Widget _navItem({required BuildContext context,required String text,required String selIcon,required String unSelIcon,required VoidCallback func}){
    return   GestureDetector(
      onTap:func,
      child: Column(children: [
        SvgPicture.asset(selIcon,height: 22.h,width: 22.h,),
        SizedBox(height: 6.h,),
        Text(text,style: Theme.of(context).textTheme.titleSmall),
      ],),
    );
  }
}
