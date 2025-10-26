import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';
import '../../widgets/rec_ac_bottom_section.dart';
import '../../widgets/rec_ac_btn.dart';
import '../../widgets/rec_ac_form.dart';
import '../../widgets/rec_ac_top_section.dart';

class RecoverAcScreen extends StatelessWidget {
  const RecoverAcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 8.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      RecoverAcTopSection(),
                      RecoverAcForm(),
                    ],),

                 Column(
                   children: [
                   RecoverAcBottomSection(),
                   RecoverAcBtn(text: 'Continue',),
                 ],)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
