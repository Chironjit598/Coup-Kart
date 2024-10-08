import 'package:coup/controllers/change_pass_controller.dart';
import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:coup/view/profile_info_pages/profile_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePassScreen extends StatelessWidget {
  ChangePassScreen({super.key});

  ChangePassController changePassController = Get.put(ChangePassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, size: 30.sp)),
        title: const Text("Change Password"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  titleText("Your Current Password"),
                  SizedBox(
                    height: 7.h,
                  ),

                  Obx(()=> customTextField(
                    changePassController.passController,
                    TextInputType.text,
                    context,
                    "Enter Password",
                    (val) {
                      if (val.isEmpty) {
                        return 'this field can\'t be empty';
                      }
                    },
                    prefixIcon: Icons.key_rounded,
                    suffixIcon: changePassController.obscureText.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    suffixIconOntap: () =>
                        changePassController.togglePasswordVisibility(),
                    obscureText: changePassController.obscureText.value,
                  ),
                 ),


                 
                  SizedBox(
                    height: 15.h,
                  ),
                  titleText("Enter New Password"),
                  SizedBox(
                    height: 7.h,
                  ),
                  Obx(()=> customTextField(
                    changePassController.newPassController,
                    TextInputType.text,
                    context,
                    "Enter Password",
                    (val) {
                      if (val.isEmpty) {
                        return 'this field can\'t be empty';
                      }
                    },
                    prefixIcon: Icons.key_rounded,
                    suffixIcon: changePassController.obscureText.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    suffixIconOntap: () =>
                        changePassController.togglePasswordVisibility(),
                    obscureText: changePassController.obscureText.value,
                  ),
                 ),


                 
                 
                  SizedBox(
                    height: 15.h,
                  ),
                  titleText("Re-Enter New Password"),
                  SizedBox(
                    height: 7.h,
                  ),

                Obx(()=>  customTextField(
                    changePassController.reNewPassController,
                    TextInputType.text,
                    context,
                    "Enter Password",
                    (val) {
                      if (val.isEmpty) {
                        return 'this field can\'t be empty';
                      }
                    },
                    prefixIcon: Icons.key_rounded,
                    suffixIcon: changePassController.obscureText.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                    suffixIconOntap: () =>
                        changePassController.togglePasswordVisibility(),
                    obscureText: changePassController.obscureText.value,
                  ),
                ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () => Get.toNamed(Routes.forgetScreen),
                          child: Text(
                            "Forget Password?",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 19.sp,
                              color: AppColors.primaryClr,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 260.h,
            ),
            CustomButton(title: "Update Password", onpressed: () {}),
          ],
        ),
      ),
    );
  }
}
