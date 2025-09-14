import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.obs = false,
    this.maxLines = 1,
    this.suffixIcon,
    this.prefixIcon,
    this.counterText,
     this.hintText,
    this.labelText,
    this.subLabel,
    this.focusNode,
    required this.controller,
    this.maxLength,
    this.validator,
    this.keyboardType,
    this.onChanged,  this.textCapitalization=TextCapitalization.none,
  });

  final Widget? suffixIcon;
  final String? counterText;
  final int? maxLength;
  final Widget? prefixIcon;
  final String? hintText;
  final String? labelText;
  final String? subLabel;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool obs;
  final int maxLines;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     if ( labelText!=null) ...[
       Row(
         children: [
           Align(
              alignment: Alignment.topLeft,
              child: Text(
                labelText!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
           if(subLabel!=null)Text(
              subLabel!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 8.sp,color: AppColors.whiteColor.withValues(alpha: 0.5)),
            ),

         ],
       ),
       SizedBox(height: 12.h),
     ],
        TextFormField(
          maxLength: maxLength,
          textCapitalization: textCapitalization,
          maxLines: maxLines,
          validator: validator,
          focusNode: focusNode,
          keyboardType: keyboardType,
          obscureText: obs,
          controller: controller,
          onChanged: onChanged,
          cursorColor: AppColors.whiteColor,
          style: Theme.of(context).textTheme.titleMedium,
          decoration: InputDecoration(
            counterText: counterText,
            filled: true,
            fillColor: AppColors.darkGrey,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}