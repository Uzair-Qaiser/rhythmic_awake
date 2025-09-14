import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/view/login/widgets/login_bottom_section.dart';
import 'package:rhythmic_awake/view/login/widgets/login_btn.dart';
import 'package:rhythmic_awake/view/login/widgets/login_form.dart';
import 'package:rhythmic_awake/view/login/widgets/login_top_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
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
