import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/rec_ac_bottom_section.dart';
import '../../widgets/rec_ac_btn.dart';
import '../../widgets/rec_ac_form.dart';
import '../../widgets/rec_ac_top_section.dart';

class RecoverAcScreen extends StatelessWidget {
  const RecoverAcScreen({super.key});

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
