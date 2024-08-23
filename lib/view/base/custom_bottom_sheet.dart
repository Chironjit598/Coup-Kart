import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


customBottomSheet(context, onpress) {
  Get.bottomSheet(
      backgroundColor: Colors.white,
      Container(
        height: MediaQuery.of(context).size.height * 0.8, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.primaryClr,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 40.h,
                      ),
                      child: Image.asset(
                        AppImages.appLogo,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 20.w,
                    top: 10.h,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 48, 47, 47),
                            )),
                        child: Text(
                          "x",
                          style: TextStyle(
                            fontSize: 23.sp,
                            color: const Color.fromARGB(255, 48, 47, 47),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.h, top: 20.h),
              child: Text(
                "Try New Places & Save Now",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.h, top: 5.h),
              child: Text(
                "Just for \$6.99/mo",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

SizedBox(
        height: 10.w,
      ),
            cusListPoint(AppImages.product1, "Exciting Deals !!"),
            cusListPoint(AppImages.product1, "Find Amazing places near you !"),
            cusListPoint(AppImages.product1, "Save Money !!"),
SizedBox(
        height: 10.w,
      ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.sp),
              child: Text("Please Subscribe to enjoy our popular and remarkable deals and save some money today",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontSize: 16.sp,
              
              ),
              ),
            )
 
            ,

            SizedBox(
              height: 10.h,
            ),

            CustomButton(title: "Subscribe", onpressed: onpress)


         
          ],
        ),
      ));
}

Widget cusListPoint(img, title) {
  return Padding(
    padding:  EdgeInsets.symmetric(
      horizontal: 20.w
    ),
    child: Row(
      children: [
     Image.asset(
        img,
        height: 35.h,
        width: 35.w,
      ),
      
      SizedBox(
        width: 10.w,
      ),
     Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
      ),
      ]),
  );
    
  
}
