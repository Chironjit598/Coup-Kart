import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customExploreTextItem(title, ontap) {
  return Padding(
    padding: EdgeInsets.only(left: 20.w),
    child: TextButton(
        onPressed: ()=>ontap,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 21.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryClr,
          ),
        )),
  );
}
