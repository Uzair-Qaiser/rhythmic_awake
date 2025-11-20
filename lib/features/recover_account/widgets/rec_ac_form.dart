import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theme/app_colors.dart';
import '../../../shared/widgets/text_field_widget.dart';

class RecoverAcForm extends StatefulWidget {
  const RecoverAcForm({super.key});

  @override
  State<RecoverAcForm> createState() => _RecoverAcFormState();
}

class _RecoverAcFormState extends State<RecoverAcForm> {
  String? selectedValue="email";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Verification Type:",style: Theme.of(context).textTheme.titleMedium,),

            DropdownButton<String>(

              alignment: AlignmentGeometry.topRight,
              style: Theme.of(context).textTheme.titleMedium,
              value: selectedValue,
              hint: const Text('Select contact type'),
              underline: SizedBox.shrink(),
              items: const [
                DropdownMenuItem(value: 'phone', child: Text('Phone No')),
                DropdownMenuItem(value: 'email', child: Text('Email')),
              ],
              onChanged: (val) {
                setState(() {
                  selectedValue = val;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 60.h,),
        selectedValue=="email"?
        CustomTextField(
          keyboardType: TextInputType.emailAddress,
          labelText: "Email Address",
          controller: TextEditingController(),
        ): CustomTextField(
          keyboardType: TextInputType.phone,
          obs: true,
          labelText: "Phone Number",
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Text", style: Theme.of(context).textTheme.titleSmall),
                  SizedBox(width: 8.w),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 12.sp,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
          ),
          controller: TextEditingController(),
        ),


        SizedBox(height: 24.h),
      ],
    );
  }
}
