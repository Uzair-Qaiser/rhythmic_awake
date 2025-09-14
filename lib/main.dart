import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/utils/app_images.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(402, 874),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Builder(
            builder: (context) {
              return MaterialApp.router(
                routerConfig: appRouter,
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                builder: (context,child){
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(AppImages.bgImage,fit: BoxFit.cover,),
                      child??SizedBox.shrink(),
                    ],
                  );
                },
              );
            },

        )
    );
  }
}

