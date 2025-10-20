import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import '../../../../shared/widgets/app_bg.dart';
import '../widgets/alarm_tab_widget.dart';
import '../widgets/todo_tab_widget.dart';

class CalendarEvents extends StatefulWidget {
  const CalendarEvents({super.key});

  @override
  State<CalendarEvents> createState() => _CalendarEventsState();
}

class _CalendarEventsState extends State<CalendarEvents> {
  int _selectedIndex=0;
  _changeIndex(int val){
    _selectedIndex=val;
    setState(() {
    });
  }
  final List<Widget> _tabs=[
    AlarmTabWidget(),
    TodoTabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppImages.arrowLeft),
                      Text(
                       'September 2025',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      SvgPicture.asset(AppImages.arrowRight),
                    ],
                  ),
                  SizedBox(height: 57.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(text: "Sep1,",style: Theme.of(context).textTheme.displayLarge,
                          children: [
                            TextSpan(text: ' Saturday',style: Theme.of(context).textTheme.bodyLarge),
                          ]),),
        
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 4.h),
                      decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(6.r)),
                      child: Row(children: [
                        GestureDetector(
                          onTap:(){
                            _changeIndex(0);
                          },
                          child: Container(
                            height: 21.h,
                            decoration: BoxDecoration(
                              color: _selectedIndex==0?AppColors.whiteColor:null,
                              borderRadius:  BorderRadius.circular(6.r),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h,),
                            child: Text('Alarms,',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: _selectedIndex==0?AppColors.blueColor:null),),),
                        ),
                        GestureDetector(  onTap:(){
                          _changeIndex(1);
                        },
                          child: Container(
                            height: 21.h,
                            decoration: BoxDecoration(
                              color: _selectedIndex==1?AppColors.whiteColor:null,
                              borderRadius:  BorderRadius.circular(6.r),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 4.h,),
                            child: Text('To Do List,',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: _selectedIndex==1?AppColors.blueColor:null),),),
                        )
                    ],),),
                    ],
                  ),
                  SizedBox(height: 24.h),
                 IndexedStack(index: _selectedIndex,children: _tabs,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
