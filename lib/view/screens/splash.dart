import 'dart:async';
import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Get.toNamed(Routes.onbording));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    customStatusBar(statusBarClr: AppColors.primaryClr, brightness: Brightness.dark);
    return Scaffold(
      backgroundColor: AppColors.primaryClr,
      body: Center(
        child: Image.asset(
          AppImages.appLogo,
          height: 146.h,
          width: 300.w,
        ),
      ),
    );
  }
}
