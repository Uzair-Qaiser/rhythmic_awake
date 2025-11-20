import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_images.dart';
import '../../../core/theme/app_colors.dart';
import '../../../shared/widgets/gradient_text.dart';

class RecoverAcTopSection extends StatelessWidget {
  const RecoverAcTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SvgPicture.asset(AppImages.appIcon, width: 100.w, height: 92.h),
      SizedBox(height: 22.h),
      Text(
        'Recover Your Account',
        style: Theme.of(context).textTheme.headlineLarge!,
      ),
      SizedBox(height: 16.h),
      Text(
        "Choose how to get a verification code",
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 62.h),
    ],);
  }
}
