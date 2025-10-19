import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';

import '../../../../core/theme/app_colors.dart';
class TermsCondWidget extends StatelessWidget {
  const TermsCondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 71.h,),
      Row(
        children: [
          SvgPicture.asset(AppImages.checkIcon,height: 10.h,width: 10.w,),
          SizedBox(width: 4.w,),
          Flexible(
            child: RichText(
              text: TextSpan(
                text: "I Agree to the ",
                style: Theme.of(context).textTheme.titleSmall,
                children: [
                  TextSpan(
                      text: "terms",
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(color:AppColors.darkGreen,decoration: TextDecoration.underline,decorationColor: AppColors.darkGreen)
                  ),   TextSpan(
                      text: " of Rhythmic Awakening’s Terms of Service.",
                      style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 16.h,),

    ],);
  }
}
