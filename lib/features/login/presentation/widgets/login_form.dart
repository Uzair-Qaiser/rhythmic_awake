import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../shared/widgets/text_field_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        CustomTextField(
          keyboardType: TextInputType.name,
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
          obs: true,
          labelText: "Password",
          suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,)), hintText: '', controller: TextEditingController(),
        ),
        SizedBox(height: 24.h,),

      ],
    );
  }
}
