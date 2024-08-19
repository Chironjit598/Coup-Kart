import 'package:coup/routes/routes.dart';
import 'package:coup/utils/app_constants.dart';
import 'package:coup/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CupCart());
}

class CupCart extends StatelessWidget {
  const CupCart({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryClr,
    ));
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstant.appName,
          getPages: pages,
          initialRoute: Routes.splash,
        );
      },
    );
  }
}
