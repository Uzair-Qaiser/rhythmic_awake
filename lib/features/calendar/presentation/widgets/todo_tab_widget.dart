import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhythmic_awake/core/theme/app_colors.dart';
import 'package:rhythmic_awake/features/calendar/presentation/widgets/todo_item.dart';
import '../../../../core/constants/app_images.dart';

class TodoTabWidget extends StatelessWidget {
  const TodoTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "To Do List",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Spacer(),
          SvgPicture.asset(AppImages.undoArrow),
          SizedBox(width: 12.w,),
          SvgPicture.asset(AppImages.redoArrow),
          SizedBox(width: 24.w,),
          SvgPicture.asset(AppImages.uploadTodo),
        ],
      ),
      SizedBox(height: 24.h),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.transparentColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TodoItem(text: 'Take the dog on a walk.', todoNo: 1),
          TodoItem(text: 'Draft management financial pack.', todoNo: 2),
          TodoItem(text: 'Review and M&A Documents for publishing.', todoNo: 3),
          TodoItem(text: 'Create Merger and Acquisitions Memo.', todoNo: 4),
          TodoItem(text: 'Communicate Changes to be made in company’s ERP system to IT', todoNo: 5),
          TodoItem(text: 'Create Financial Forcast and annual budget models', todoNo: 6),
          TodoItem(text: 'Advise VP of Finance on budget metrics, along with budget strategies deployed.', todoNo: 7),
          TodoItem(text: 'Review entire supply chain process of business, finding opportunities for efficiencies and effectiveness of overall process.', todoNo: 8),

    ],),)

    ],);
  }
}
