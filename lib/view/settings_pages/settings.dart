import 'package:coup/routes/routes.dart';
import 'package:coup/view/base/custom_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, size: 30.sp)),
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20.h
              ,
            ),
            CustomListTile(
              leIcon: Icons.lock,
              title: "Change Password",
              traIcon: Icons.keyboard_arrow_right,
              ontap: ()=>Get.toNamed(Routes.changePass)
            ),

              CustomListTile(
              leIcon: Icons.privacy_tip_outlined,
              title: "Privacy Policy",
              traIcon: Icons.keyboard_arrow_right,
              ontap: (){

              }
            ),

              CustomListTile(
              leIcon: CupertinoIcons.exclamationmark_circle,
              title: "Terms of Services",
                  traIcon: Icons.keyboard_arrow_right,
              ontap: (){

              }
            ),

              CustomListTile(
              leIcon: CupertinoIcons.question_circle,
              title: "About Us",
              traIcon: Icons.keyboard_arrow_right,
              ontap: (){

              }
            ),
          ],
        ),
      ),
      
      
    );
  }
}