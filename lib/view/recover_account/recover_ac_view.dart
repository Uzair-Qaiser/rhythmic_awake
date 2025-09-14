import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_bottom_section.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_btn.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_form.dart';
import 'package:rhythmic_awake/view/recover_account/widgets/rec_ac_top_section.dart';

class RecoverAcView extends StatelessWidget {
  const RecoverAcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 47.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RecoverAcTopSection(),
              RecoverAcForm(),
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
