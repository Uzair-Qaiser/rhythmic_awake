import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';
import 'package:rhythmic_awake/shared/widgets/text_field_widget.dart';
import '../../../../core/constants/app_images.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          'Don’t Miss Anything By Reminder',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppImages.logout,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ],
                ),
                SizedBox(height: 80.h,),
                Align(
                  alignment:Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 28.w,vertical: 12.h),
                    decoration: BoxDecoration(
                        color: AppColors.blueColor.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(34.2.r)),
                    child: Column(
                    children: [
                      Image.asset(AppImages.user,height: 74.h,width: 74.w,),
                      SizedBox(height:10.h,),
                      SvgPicture.asset(AppImages.editProfile)
                    ],
                  ),
                  ),
                ),

                SizedBox(height: 63.h,),
                CustomTextField(labelText: 'Username',controller: TextEditingController(),hintText:'John_Smith2025',),
               SizedBox(height: 20.h,),
                CustomTextField(labelText: 'First Name',
                    hintText: 'John',
                    controller: TextEditingController()),
               SizedBox(height: 20.h,),
                CustomTextField(labelText: 'User ID',controller: TextEditingController(),hintText: 'A100-000',),
                SizedBox(height: 20.h,),
                CustomTextField(labelText: 'Country',controller: TextEditingController(),
                  hintText: 'USA',
            ),
                SizedBox(height: 25.h,),
                Row(children: [
                  Icon(Icons.check_box_outline_blank,color: AppColors.greyColor2,size: 13.sp,),
                  SizedBox(width: 8.w,),
                  Text('Join our referral affiliate program',style: Theme.of(context).textTheme.titleSmall,),
                ],),

               SizedBox(height: 37.h,),
                     ],
            ),
          ),
        ),
      ),
    );
  }
}
