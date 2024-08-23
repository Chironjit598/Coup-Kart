import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextField(
  keyboardtype,
  context,
  hinttext,
  validator, {
  bool obscureText = false,
  prefixIcon,
  suffixIcon,
  readOnly = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextFormField(
      cursorColor: AppColors.primaryClr,
      keyboardType: keyboardtype,
      readOnly: readOnly,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            right: 10.w,
          ),
          child: Icon(
            prefixIcon,
            color: AppColors.primaryClr,
            size: 28.sp,
          ),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            top: 5.h,
            bottom: 5.h,
            right: 10.w,
          ),
          child: Icon(
            suffixIcon,
            color: AppColors.primaryClr,
            size: 28.sp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: const BorderSide(color: AppColors.primaryClr)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primaryClr),
          borderRadius: BorderRadius.circular(20.r),
        ),
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
