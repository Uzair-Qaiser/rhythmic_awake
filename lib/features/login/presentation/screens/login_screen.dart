import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/login_bottom_section.dart';
import '../widgets/login_btn.dart';
import '../widgets/login_form.dart';
import '../widgets/login_top_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                LoginTopSection(),
                LoginForm(),
                LoginBtn(),
                LoginBottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
