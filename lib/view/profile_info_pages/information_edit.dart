import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/profile_info_pages/profile_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InformationEditPage extends StatelessWidget {
  const InformationEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, size: 30.sp)),
        title: Text("Account Information"),
      ),
      
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  titleText("  Name"),
                   SizedBox(
                    height: 7.h,
                  ),
                  accInfoTextField(),
                   SizedBox(
                    height: 20.h,
                  ),
                  titleText("  Email"),
                   SizedBox(
                    height: 7.h,
                  ),
                  accInfoTextField(),
                 
                ],
              ),
            ),
              SizedBox(
                    height: 450.h,
                  ), 
             CustomButton(title: "Save", onpressed: (){}),
                    ],
        ),
      ),
    );
  }
}

Widget accInfoTextField() {
  return TextFormField(
    cursorColor: AppColors.primaryClr,
    keyboardType: TextInputType.text,
    style: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
    ),
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.r),
      ),
      filled: true,
      hintStyle: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
