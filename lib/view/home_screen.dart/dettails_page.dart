import 'package:coup/controllers/dettails_page_button_controller.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/dettails_page_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DettailsPage extends StatelessWidget {
  DettailsPage({
    super.key,
  });

  DettailsPageButtonController controller =
      Get.put(DettailsPageButtonController());
      final Map<String, dynamic> product = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, size: 30.sp)),
        title: const Text("Deal Dettails"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      product["img"],
                      height: 325.h,
                      width: 325.w,
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  product["title"],
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Icon(Icons.location_on_outlined),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                     product["location"],
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                child: Text(
                    product["des"],
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    top: 20.h,
                  ),
                  child: Text(
                      product["price"],
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryClr),
                  ),
                ),
              ),
              Obx( 
                () => Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.w,
                      top: 50.h,
                    ),
                    child: Text(
                      "Redeem ${controller.redemCount.value}",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackClr),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Obx(() => dettailsPageButton(
                  title: controller.buttonName.value,
                  color: controller.buttonClr.value,
                  onpressed: () {
                    controller.handleButtonPress(context);
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
