import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:coup/view/base/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../base/custom_button.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
                    height: 360.h,
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
                "Reset Password",
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
                "Password must hace 8-10 Characters.",
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
                      padding:  EdgeInsets.symmetric(horizontal: 20.w
                      ),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(bottom: 5.h, left: 10.w),
                            child: CustomTitle("Password"),
                          )

                         ,
                          customTextField(
                            TextInputType.text,
                            context,
                            "Enter Password",
                            (val) {
                              if (val.isEmpty) {
                                return 'this field can\'t be empty';
                              }
                            },
                            prefixIcon: Icons.key_rounded,
                            suffixIcon: Icons.remove_red_eye_outlined,
                            obscureText: true,
                          ),

                         Padding(
                            padding:  EdgeInsets.only(bottom: 5.h, left: 10.w, top: 10.h
                            ),
                            child: CustomTitle("Confirm Password"),
                          ),
                            
                      customTextField(
                        TextInputType.text,
                        context,
                        "Confirm Password",
                        (val) {
                          if (val.isEmpty) {
                            return 'this field can\'t be empty';
                          }
                        },
                        prefixIcon: Icons.key_rounded,
                        suffixIcon: Icons.remove_red_eye_outlined,
                        obscureText: true,
                      ),
                      
                      
                        ],
                      ),
                    ),
                    
                    
                     SizedBox(
                height: 40.h,
              ),
                        CustomButton(title: "Confirm", onpressed: (){})
        
        
          ],
        ),
      ),
   
    );
  }
}