import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customProductCategory(title, subtile, img, price, ontap){
  return InkWell(
    onTap: ontap,
    child: Card(
      color: Colors.white,
      child: Container(
      
        
        height: 230.h,
        width: 165.w,
        padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
        margin: EdgeInsets.only(
          left: 5.w
        ),    
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(img,
              fit: BoxFit.fill,
              height: 135.h,
              width: 135.h,
              ),
            ),
             SizedBox(
              height: 5.h,
            ),
            Text(title, 
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF111111),
            ),
            ),
      
            SizedBox(
              height: 2.h,
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(subtile,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
                ),
      
                   Text(price,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.primaryClr,
                  fontWeight: FontWeight.w500,
                ),
                ),
      
      
              ],
            )
            
          ],
          
        ),
      ),
    ),
  );
}