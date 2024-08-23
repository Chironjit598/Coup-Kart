import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dettailsPageButton({required  title,required color,required onpressed }){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 25.w),
    child: SizedBox(
      height: 43.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
         backgroundColor: WidgetStateProperty.all(color)
        ),
        onPressed:onpressed , 
        child: Text(title, 
        style: TextStyle(
          fontSize: 20.sp,
          color: AppColors.whiteClr,
        ),
        )),
    ),
  );
}