import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileInformationPage extends StatelessWidget {
  const ProfileInformationPage({super.key});

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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              titleText("  Name"),
              SizedBox(
                height: 5.h,
              ),
              titleContainer("Chironjit Roy"),
              SizedBox(
                height: 20.h,
              ),
              titleText("  Email"),
              SizedBox(
                height: 5.h,
              ),
              titleContainer("chironjitchandraroy@gmail.com"),
              SizedBox(
                height: 480.h,
              ),
              editButton("Edit Information", ()=>Get.toNamed(Routes.infoEditPage))
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleText(title) {
  return Text(
    title,
    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
  );
}

Widget titleContainer(title) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(20.r),
    ),
    child: Text(
      title,
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
    ),
  );
}

Widget editButton(title, ontap) {
  return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(width: 1.h, color: AppColors.primaryClr),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryClr,
            ),
          ),
        ),
      ));
}
