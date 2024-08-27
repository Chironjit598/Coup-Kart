import 'package:coup/controllers/onbordind_controller.dart';
import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class OnbordingSlider extends StatelessWidget {
  String titleOne;
  String titleTwo;
  String img;
  String des;
  int pageIndex;
  OnbordingSlider(
      {required this.img,
      required this.titleOne,
      required this.titleTwo,
      required this.des,
      required this.pageIndex});
  OnbordingController controller = Get.put(OnbordingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Center(
            child: Image.asset(
              img,
              height: 420.h,
              width: 280.w,
            ),
          ),
          Obx(() => RichText(
                  text: TextSpan(
                      text: titleOne,
                      style: TextStyle(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackClr),
                      children: [
                    TextSpan(
                      text: titleTwo,
                      style: TextStyle(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                          color: controller.currentindex.value == pageIndex &&
                                  pageIndex == 3
                              ? AppColors.blackClr
                              : AppColors.primaryClr),
                    )
                  ]))),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              des,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.sp,
              ),
            ),
          ),

         

          
        ],
      ),
    );
  }
}
