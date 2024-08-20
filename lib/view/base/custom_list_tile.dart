import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomListTile({leIcon, title, traIcon, ontap, bgColor}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: bgColor,
        border: Border.all(
          width: 1,
          color: AppColors.primaryClr,
        )),
    child: ListTile(
      onTap: ontap,
      leading: Icon(
        leIcon,
        size: 32.sp,
        color: AppColors.primaryClr,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(
        traIcon,
        size: 32.sp,
        color: AppColors.primaryClr,
      ),
    ),
  );
}
