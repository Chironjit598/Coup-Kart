import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                "Forget Password",
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
                "Please your email address to reset your password.",
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
                      padding:  EdgeInsets.symmetric(horizontal: 15.w
                      ),
                      child: customTextField(
                        TextInputType.emailAddress,
                        context,
                        "Enter E-Mail",
                        (val) {
                          if (val.isEmpty) {
                            return "this feild can't empty";
                          }
                      
                          if (!val.contains(RegExp(r'\@'))) {
                            return 'enter a valid email address';
                          }
                        },
                        prefixIcon: Icons.email_outlined,
                      ),
                    ),

                     SizedBox(
                height: 170.h,
              ),
                        CustomButton(title: "Send OTP", onpressed: ()=>Get.toNamed(Routes.otpScreen))
        
        
          ],
        ),
      ),
    );
  }
}