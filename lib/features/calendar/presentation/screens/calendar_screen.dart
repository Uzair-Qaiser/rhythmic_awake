import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/features/calendar/routes/calendar_routes.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _currentMonth = DateTime.now();
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _previousMonth,
                    child: SvgPicture.asset(AppImages.arrowLeft),
                  ),
                  Text(
                    _getMonthYear(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  GestureDetector(
                    onTap: _nextMonth,
                    child: SvgPicture.asset(AppImages.arrowRight),
                  ),
                ],
              ),
              SizedBox(height: 43.h),

              Expanded(
                child: _buildCalendarWithListView(),
              ),
              SizedBox(height: 17.h,),
              Row(
                children: [
                  Icon(Icons.circle,size: 10.sp,color: AppColors.greyColor,),
                  SizedBox(width: 4.84,),
                  Text('To Do List Reading Assistant Activated.',style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 11.sp),),
                ],
              ),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  Icon(Icons.circle,size: 10.sp,color: AppColors.darkGreen,),
                  SizedBox(width: 4.84,),
                  Text('Countdown Feature Activated',style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 11.sp),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
  

  Widget _buildCalendarWithListView() {
    final DateTime firstDay = DateTime(_currentMonth.year, _currentMonth.month, 1);
    final DateTime lastDay = DateTime(_currentMonth.year, _currentMonth.month + 1, 0);
    final int daysInMonth = lastDay.day;

    // Calculate starting position (Monday = 1)
    final int startingWeekday = firstDay.weekday;
    final int startingOffset = startingWeekday - 1; // 0 for Monday

    // Calculate total weeks needed
    final int totalDays = daysInMonth + startingOffset;
    final int totalWeeks = (totalDays / 5).ceil(); // 5 days per week

    return ListView.builder(

      physics: const NeverScrollableScrollPhysics(),
      itemCount: totalWeeks,
      itemBuilder: (context, weekIndex) {
        return Container(
          child: Row(
            children: List.generate(5, (dayIndex) {
              final int absoluteDay = (weekIndex * 5) + dayIndex + 1;
              final int dayOfMonth = absoluteDay - startingOffset;
              if (absoluteDay <= startingOffset || dayOfMonth > daysInMonth) {
                return Expanded(
                  child: Container(
                    height: 90.h,
                    width: 70.w,
                    padding: EdgeInsets.symmetric(horizontal: 2.17.w,vertical: 2.17.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.transparentColor),
                    ),
                  ),
                );
              }

              final DateTime currentDate = DateTime(_currentMonth.year, _currentMonth.month, dayOfMonth);
              final bool isSelected = _selectedDate != null && isSameDay(_selectedDate, currentDate);
              final bool isToday = isSameDay(currentDate, DateTime.now());

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   _selectedDate = currentDate;
                    // });
                    context.pushNamed(CalendarRoutes.calendarEvents);
                  },
                  child: Container(
                    height: 90.h,
                    width: 70.w,
                    padding: EdgeInsets.symmetric(horizontal: 2.17.w,vertical: 2.17.h),
                    decoration: BoxDecoration(
                      color:Colors.transparent,
                      border: Border.all(
                        color:  AppColors.transparentColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            dayOfMonth.toString(),
                            style: Theme.of(context).textTheme.bodySmall
                          ),
                        ),
                        const Spacer(),
                       Row(children: [
                         Icon(Icons.circle,color: AppColors.greyColor,size: 12.sp,),
                         SizedBox(width: 2.43.w,),
                         Icon(Icons.circle,color: AppColors.darkGreen,size: 12.sp,),
                       ],),
                        SizedBox(height: 4.h,),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(height: 22.h,
                            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                            decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(2.r)),child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Text('To Do List',style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 5.sp),),
                              Text('Created',style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 5.sp,color: AppColors.darkGreen),),
                              ],),),
                            Container(height: 22.h,
                            decoration: BoxDecoration(color: AppColors.transparentColor,borderRadius: BorderRadius.circular(2.r)),child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Text('To Do List',style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 5.sp),),
                              Text('Created',style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 5.sp,color: AppColors.darkGreen),),
                              ],),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
  String _getMonthYear() {
    return '${_getMonthName(_currentMonth.month)} ${_currentMonth.year}';
  }

  String _getMonthName(int month) {
    const List<String> months = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return months[month - 1];
  }

  void _previousMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month - 1, 1);
    });
  }

  void _nextMonth() {
    setState(() {
      _currentMonth = DateTime(_currentMonth.year, _currentMonth.month + 1, 1);
    });
  }

  bool isSameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) return false;
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}