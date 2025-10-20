import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';

import '../widgets/signup_bottom_section.dart';
import '../widgets/signup_btn.dart';
import '../widgets/signup_form.dart';
import '../widgets/signup_top_section.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
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
      ),
    );
  }
}
