import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmic_awake/config/routes/route_names.dart';
import '../../../config/theme/app_colors.dart';
class LoginBottomSection extends StatelessWidget {
  const LoginBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 24.h,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              context.pushNamed(RouteName.recoverAc);
            },
              child: Text("Forgot Username?",style: Theme.of(context).textTheme.titleSmall,)),
          GestureDetector(onTap: (){
            context.pushNamed(RouteName.recoverAc);

          },child: Text("Forgot Password?",style: Theme.of(context).textTheme.titleSmall,)),
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
