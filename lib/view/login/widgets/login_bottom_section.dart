import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme/app_colors.dart';
class LoginBottomSection extends StatelessWidget {
  const LoginBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ],);
  }
}
