import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/custom_status_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
      customStatusBar(
      statusBarClr: AppColors.primaryClr, 
      brightness: Brightness.dark);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350.h,
              decoration: BoxDecoration(
                  color: AppColors.primaryClr,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r))),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(
                  top: 110.h,
                ),
                child: Image.asset(AppImages.appLogo),
              )),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "OTP",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.blackClr,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Please enter the otp code, we have sent you in your email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grayClr,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpTextField(TextInputType.number, context),
                  OtpTextField(TextInputType.number, context),
                  OtpTextField(TextInputType.number, context),
                  OtpTextField(TextInputType.number, context),
                  OtpTextField(TextInputType.number, context),
                  OtpTextField(TextInputType.number, context)
                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Text("Didn\'t Receive the code?",
            style: TextStyle(
              color: AppColors.primaryClr,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            ),

              SizedBox(
              height: 135.h,
            ),

            CustomButton(title: "Confirm", onpressed: ()=>Get.toNamed(Routes.resetPassScreen))
          ],
        ),
      ),
    );
  }
}

Widget OtpTextField(
  keyboardtype,
  context,
) {
  return SizedBox(
    width: 50.w,
    height: 55.h,
    child: TextField(
    
      cursorColor: AppColors.primaryClr,
      keyboardType: keyboardtype,
       style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
       
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColors.primaryClr)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primaryClr),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );
}
