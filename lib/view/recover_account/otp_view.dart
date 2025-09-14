import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/otp_input_widget.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/otp_top_section.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_bottom_section.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_btn.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 47.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OtpTopSection(),
              OtpInputWidget(controller: TextEditingController(), onCompleted: (val){}),
              const Spacer(),
              RecoverAcBottomSection(),
              RecoverAcBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
