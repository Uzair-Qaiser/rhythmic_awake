import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SmallBtn extends StatelessWidget {
  const SmallBtn({super.key, required this.func, required this.text});
final VoidCallback func;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
            color: Theme.of(context).primaryColor),
        child: Center(child: Text(text,style: Theme.of(context).textTheme.titleSmall,),),),
    );
  }
}
