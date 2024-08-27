import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_list_tile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150.h,
              ),
              Container(
                padding: EdgeInsets.all(50.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: AppColors.primaryClr,
                  ),
                ),
                child: Center(
                    child: Text(
                  "\$50",
                  style: TextStyle(
                    fontSize: 50.sp,
                    color: AppColors.primaryClr,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Total Saved",
                style: TextStyle(
                  fontSize: 27.sp,
                  color: AppColors.blackClr,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomListTile(
                  leIcon: Icons.person,
                  bgColor: Colors.grey.shade300,
                  title: "Profile Information",
                  traIcon: Icons.keyboard_arrow_right,
                  ontap: () => Get.toNamed(Routes.profileInfo)),
              CustomListTile(
                ontap:()=> Get.toNamed(Routes.subscription),
                  leIcon: Icons.star,
                  title: "Subscription",
                  bgColor: Colors.grey.shade300,
                  traIcon: Icons.keyboard_arrow_right),
              CustomListTile(
                ontap: ()=>Get.toNamed(Routes.settingPage),
                  leIcon: Icons.settings,
                  bgColor: Colors.grey.shade300,
                  title: "Settings",
                  traIcon: Icons.keyboard_arrow_right),
              CustomListTile(
                ontap: () {
                  logOutDialog();
                },
                leIcon: Icons.logout_outlined,
                bgColor: Colors.grey.shade300,
                title: "Log Out",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

logOutDialog() {
  return Get.defaultDialog(
      titleStyle: TextStyle(
        color: Colors.red,
        fontSize: 24.sp,
      ),
      title: "Logout",
      content: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: 1.h,
              color: AppColors.primaryClr,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                child: Text(
                  "Are your sure you want to logout from your Account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                dialogButton("Cancel", Colors.white, AppColors.primaryClr, AppColors.primaryClr, ()=>Get.back()),
                dialogButton("Logout", AppColors.primaryClr, AppColors.primaryClr, Colors.white, (){})

             ],
            )
          ],
        ),
      ));
}

Widget dialogButton(title, bgClr, borderClr, textClr, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      width: 115.w,
      height: 45.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: bgClr,
          border: Border.all(
            width: 1,
            color: borderClr,
          )),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          color: textClr,
          fontSize: 16.sp,
        ),
      )),
    ),
  );
}
