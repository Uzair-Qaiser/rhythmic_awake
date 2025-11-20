import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rhythmic_awake/shared/widgets/app_bg.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../shared/widgets/text_field_widget.dart';
import '../../widgets/rec_ac_bottom_section.dart';
import '../../widgets/rec_ac_btn.dart';


class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({super.key});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final passController=TextEditingController();
  final cPassController=TextEditingController();

  bool _obs=true;
  bool _cObs=true;
  void _togglePass(){
    _obs=!_obs;
    setState(() {

    });
  }
  void _toggleCPass(){
    _cObs=!_cObs;
    setState(() {

    });
  }
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
                SvgPicture.asset(AppImages.appIcon, width: 100.w, height: 92.h),
                SizedBox(height: 22.h),
                Text(
                    'Reset Your Password',
                    style: Theme.of(context).textTheme.headlineLarge
                ),
                SizedBox(height: 102.h,),
                CustomTextField(
                  obs: _obs,

                  keyboardType: TextInputType.emailAddress,
                  labelText: "Enter Password",
                  suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: GestureDetector(onTap: (){_togglePass();},child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,))), hintText: '',

                  controller: passController,
                ),
                SizedBox(height: 24.h,),
                CustomTextField(
                  obs: _cObs,
                  keyboardType: TextInputType.emailAddress,
                  labelText: "Confirm New Password",
                  controller: cPassController,
                  suffixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: GestureDetector(onTap: (){_toggleCPass();},child: SvgPicture.asset(AppImages.hiddenIcon,height: 12.h,width: 12.w,))), hintText: '',

                ),
                const Spacer(),
                RecoverAcBottomSection(),
                RecoverAcBtn(text: "Submit",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
