import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';

import '../../widgets/otp_input_widget.dart';
import '../../widgets/otp_top_section.dart';
import '../../widgets/rec_ac_bottom_section.dart';
import '../../widgets/rec_ac_btn.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OtpTopSection(),
                OtpInputWidget(controller: TextEditingController(), onCompleted: (val){}),
                const Spacer(),
                RecoverAcBottomSection(),
                RecoverAcBtn(text: "Unlock Account",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
