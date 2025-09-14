import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythmic_awake/config/theme/app_colors.dart';
import 'package:rhythmic_awake/utils/app_images.dart';
import 'package:rhythmic_awake/widgets/gradient_text.dart';
import '../../widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.appIcon, width: 100.w, height: 92.h),
                SizedBox(height: 22.h),
                GradientText(
                  'Sign In to Your Account',
                  style: Theme.of(context).textTheme.headlineLarge!,
                  gradient: LinearGradient(
                    colors: [AppColors.whiteColor, AppColors.blueColor2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.28, 1],
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Let’s create a new life habit, and potentially improve your life’s productivity trajectory.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 132.h),
                Column(
                  children: [
                    CustomTextField(
                      labelText: "Username",
                      controller: TextEditingController(),),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "Initial Username will be product barcode. See product barcode displayed on the outside of rhythmic awakening’s speaker system box for access to this app",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(width: 16.w,),
                        SizedBox(height:21.h,child: VerticalDivider(color: AppColors.greyColor,)),
                        SizedBox(width: 16.w,),
                        Container(height: 28.h,width: 28.w,
                          padding: EdgeInsets.all(6.sp),
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor.withValues(alpha: 0.24),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                          child: SvgPicture.asset(AppImages.cameraIcon,height: 16.h,width: 16.w,),
                        ),

                      ],
                    ),
                    SizedBox(height: 26.h,),

                    CustomTextField(
                      labelText: "Password",
             suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                 child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,)), hintText: '', controller: TextEditingController(),
                    ),
                    SizedBox(height: 24.h,),
                    Container(
                      height: 47.h,
                      width: 308.w,
                      decoration: BoxDecoration(
                        color: AppColors.limeGreenColor,
                          borderRadius: BorderRadius.circular(16.r),),
                      child: Center(child: Text("Get Started",style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.blueColor),)),
                    ),
                    SizedBox(height: 24.h,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Forgot Username?",style: Theme.of(context).textTheme.titleSmall,),
                      Text("Forgot Password?",style: Theme.of(context).textTheme.titleSmall,),
                    ],),
                    SizedBox(height: 109.h,),
                    RichText(
                      text: TextSpan(
                        text: "Need Help ? ",
                        style: Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                            text: "Contact Support",
                            style: Theme.of(context).textTheme.displayMedium!.copyWith(color:AppColors.limeGreenColor,)
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
