import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
class AppTheme {
  const AppTheme._();
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(scrolledUnderElevation: 0),
    fontFamily: 'PlusJakartaSans',
    primaryColor: AppColors.darkGreen,
   scaffoldBackgroundColor: Colors.white,
  canvasColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.darkGreen,
    ),
    textTheme:  TextTheme(
      headlineLarge: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w700,color:  AppColors.whiteColor),
      headlineMedium: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color:  AppColors.whiteColor),
      headlineSmall: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.w600,color:  AppColors.whiteColor),
      bodyLarge: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w300,color:  AppColors.whiteColor),
      bodyMedium: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w200,color:  AppColors.whiteColor),
      bodySmall: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w200,color:  AppColors.whiteColor),
      titleLarge: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color:  AppColors.whiteColor),
      titleMedium: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color:  AppColors.whiteColor),
      titleSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400,color:  AppColors.whiteColor),
      displayMedium: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500,color:  AppColors.whiteColor),
      displayLarge: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600,color:  AppColors.whiteColor),
      displaySmall: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600,color:  AppColors.whiteColor),
    ),
  );
  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
     primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white70),
      bodySmall: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white60),

    ),
  );
}