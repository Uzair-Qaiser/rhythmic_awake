import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.text, required this.todoNo});
final String text;
final int todoNo;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(children: [
        Icon(Icons.circle,color: AppColors.greyColor,size: 10.sp,),
        SizedBox(width: 8.21.w,),
        Text('#$todoNo',style: Theme.of(context).textTheme.titleSmall,),
      ],),
      SizedBox(height: 12.h,),
      Text(text,style: Theme.of(context).textTheme.displayMedium,),
        SizedBox(height: 24.h,),

    ],);
  }
}
