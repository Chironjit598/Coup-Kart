import 'package:coup/controllers/check_box_controller.dart';
import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  CheckBoxController controller = Get.put(CheckBoxController());

  @override
  Widget build(BuildContext context) {
    customStatusBar(
      statusBarClr: AppColors.primaryClr, 
      brightness: Brightness.dark);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
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
                "Sign In",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackClr,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Welcome Back! Please enter your dettails.",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grayClr,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w),
                child: Column(
                  children: [
                    customTextField(
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
                    SizedBox(
                      height: 12.h,
                    ),
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
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Obx(() => Checkbox(
                                activeColor: AppColors.primaryClr,
                                value: controller.isChecked.value,
                                onChanged: (val) =>
                                    controller.toggleCheckBox(val!))),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.grayClr,
                              ),
                            )
                          ],
                        ),
                        TextButton(
                            onPressed: () => Get.toNamed(Routes.forgetScreen),
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                fontSize: 19.sp,
                                color: AppColors.primaryClr,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                  title: "Login",
                  onpressed: () => Get.toNamed(Routes.bottoNavBar)),
              SizedBox(
                height: 25.h,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don\'t have an account?",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.blackClr,
                    ),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.signUp),
                      child: Text("Sign Up",
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
      ),
    );
  }
}
