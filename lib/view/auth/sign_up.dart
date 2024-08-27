import 'package:coup/controllers/check_box_controller.dart';
import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:coup/view/base/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  CheckBoxController controller=Get.put(CheckBoxController());
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
              height: 255.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: AppColors.primaryClr,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.r),
                      bottomRight: Radius.circular(40.r))),
              child: Padding(
                padding: EdgeInsets.only(top: 130.h),
                child: Center(child: Image.asset(AppImages.appLogo)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.blackClr,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                "Fill the information to create a new  account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackClr,
                ),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.w, right: 25.w),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.w, bottom: 5.h),
                    child: CustomTitle("Your Name"),
                  ),
                  customTextField(
               
                      TextInputType.text, context, "Enter your name", (val) {
                    if (val.isEmpty) {
                      return "this feild can't empty";
                    }
                  }, prefixIcon: Icons.person)
                ,  Padding(
                    padding: EdgeInsets.only(left: 7.w, bottom: 7.h, top: 8.h),
                    child: CustomTitle("Enter E-Mail"),
                  ),
                  customTextField(
                      TextInputType.text, context, "Enter E-Mail", (val) {
                    if (val.isEmpty) {
                      return "this feild can't empty";
                    }
                  }, prefixIcon: Icons.mail),


                     Padding(
                    padding: EdgeInsets.only(left: 7.w, bottom: 7.h, top: 8.h
                    ),
                    child: CustomTitle("Confirm Password"),
                  ),
                  customTextField(
                      TextInputType.text, context, "Enter your Password", (val) {
                    if (val.isEmpty) {
                      return "this feild can't empty";
                    }
                  }, prefixIcon: Icons.key,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  ),
               
               
                    
                    Row(
                      children: [
                        Obx(() => Checkbox(
                            activeColor: AppColors.primaryClr,
                            value: controller.isChecked.value,
                            onChanged: (val) =>
                                controller.toggleCheckBox(val!))),
                        Text(
                          "Agree with",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.blackClr,
                          ),
                        ),
                    
                          Text(
                          " Terms of Services",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryClr,
                          ),
                        ),
                      ],
                    ),
              
                ],
              ),
            ),
            CustomButton(title: "Sign Up", onpressed: (){}),

            SizedBox(
              height: 5.h
              ,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.blackClr,
                    ),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.login),
                      child: Text("Sign In",
                          style: TextStyle(
                            color: AppColors.primaryClr,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          )))
                ],
              ),
          
          ],
        ),
      ),
    );
  }
}
