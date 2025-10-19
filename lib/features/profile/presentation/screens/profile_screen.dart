import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/shared/widgets/text_field_widget.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/small_btn.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        'Don’t miss anything by reminder',
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
              Align(alignment:Alignment.center,child: Column(
                children: [
                  Image.asset(AppImages.user,height: 74.h,width: 74.w,),
                  SizedBox(height: 16.h,),
                  Text('User ID : A100-000',style: Theme.of(context).textTheme.bodyMedium,),
                  SizedBox(height: 4.h,),
                  Text('John_Smith2025',style: Theme.of(context).textTheme.displaySmall,),
                ],
              )),

              SizedBox(height: 63.h,),
              CustomTextField(labelText: 'Full Name',controller: TextEditingController(),hintText:'John Smith',),
             SizedBox(height: 20.h,),
              CustomTextField(labelText: 'Country',
                  hintText: 'USA',
                  controller: TextEditingController()),
             SizedBox(height: 20.h,),
              CustomTextField(labelText: 'Birthday',controller: TextEditingController(),hintText: 'Apr 14, 1994',),
              SizedBox(height: 20.h,),
              CustomTextField(labelText: 'Email Address',controller: TextEditingController(),
                hintText: 'sampleemail@gmail.com',
                suffixIcon:Padding(
                padding: const EdgeInsets.all(17.0),
                child: SvgPicture.asset( AppImages.calenderIcon,),
              ),),
              SizedBox(height: 20.h,),
              CustomTextField(labelText: 'Phone Number',controller: TextEditingController(),hintText: '+01234567890',),
              SizedBox(height: 37.h,),
                   ],
          ),
        ),
      ),
    );
  }
}
