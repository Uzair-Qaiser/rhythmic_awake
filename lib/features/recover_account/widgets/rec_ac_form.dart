import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_colors.dart';
import '../../../shared/widgets/text_field_widget.dart';
class RecoverAcForm extends StatelessWidget {
  const RecoverAcForm({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        CustomTextField(
          keyboardType: TextInputType.emailAddress,
          labelText: "Email Address",
          controller: TextEditingController(),
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 9),
              child: Container(
                height: 29.h,
                width: 70.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.darkGreen),
                child: Center(child: Text("Send Code",style: Theme.of(context).textTheme.titleSmall,),),)),
        ),
        SizedBox(height: 24.h),

        CustomTextField(
          keyboardType: TextInputType.phone,
          obs: true,
          labelText: "Phone Number",
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 9),
              child: Container(
                height: 29.h,
                width: 56.w,
                padding: EdgeInsets.symmetric(horizontal:8.w,vertical: 8.h),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                color: AppColors.whiteColor.withValues(alpha: 0.08)),
              child: Row(
                children: [
                  Text("Text",style: Theme.of(context).textTheme.titleSmall),
                  SizedBox(width: 8.w,),
                  Icon(Icons.arrow_drop_down,size: 12.sp,color: AppColors.whiteColor,)
                ],
              ),)),
          controller: TextEditingController(),
        ),
        SizedBox(height: 24.h,),

      ],
    );
  }
}
