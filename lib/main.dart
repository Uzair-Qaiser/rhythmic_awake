import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          precacheImage(AssetImage(AppImages.bgImage), context);
          return MaterialApp.router(
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            builder: (context, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    AppImages.bgImage,
                    fit: BoxFit.cover,
                    gaplessPlayback: true,
                    filterQuality: FilterQuality.low,
                  ),
                  child ?? const SizedBox.shrink(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

