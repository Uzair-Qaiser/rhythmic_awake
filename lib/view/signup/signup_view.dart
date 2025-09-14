import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/view/signup/widgets/signup_bottom_section.dart';
import 'package:rhythmic_awake/view/signup/widgets/signup_btn.dart';
import 'package:rhythmic_awake/view/signup/widgets/signup_form.dart';
import 'package:rhythmic_awake/view/signup/widgets/signup_top_section.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 47.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignupTopSection(),
                SignupForm(),
                TermsCondWidget(),
                SignupBtn(),
                SizedBox(height: 35.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
