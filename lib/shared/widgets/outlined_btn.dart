import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedBtn extends StatelessWidget {
  const OutlinedBtn({super.key, required this.text, required this.onTap, this.width, this.height});
  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap:onTap,
      child: Container(
        height: height??47.h,
        width: width??129.w,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16.r),),
        child: Center(child: Text(text,style: Theme.of(context).textTheme.displayMedium)),
      ),
    );
  }
}
