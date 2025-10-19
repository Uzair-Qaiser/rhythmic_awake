import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class RecoverAcBottomSection extends StatelessWidget {
  const RecoverAcBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      SizedBox(height: 16.h,),

    ],);
  }
}
