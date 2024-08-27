import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.keyboard_arrow_left, size: 30.sp)),
        title: const Text("Subscription"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Image.asset(
                AppImages.savings,
                height: 130.h,
                width: 150.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Cayman Is Hard",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 40.sp, vertical: 15.h),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Save",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryClr,
                        ),
                        children: [
                          TextSpan(
                            text:
                                " money where you can. Join CoupKart Today and save at your favorite places in the Cayman Islands.",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackClr,
                            ),
                          )
                        ])),
              ),
                  

                  customSubsciptionPachage(title: "Basic", price: "\$6.99/mo", ),
                    customSubsciptionPachage(title: "Standard", price: "\$9.99/mo", ),
                      customSubsciptionPachage(title: "Premium", price: "\$13.99/mo", ),
                        customSubsciptionPachage(title: "Supper VIP", price: "\$19.99/mo", ),

           
           
           
            ],
          ),
        ),
      ),
    );
  }
}



Widget customSubsciptionPachage({title, price, onpress}){
  return    Container(
                margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h
                ),
                
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.r)
                  ),
                child: Column(
                  children: [
                     SizedBox(
                      height: 15.h,
                    ),

                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    customSubsListTile("Exclusive Deals"),
                    customSubsListTile("Event Giveaways"),
                    customSubsListTile("Save Money"),
                    customSubsListTile("Discover Places"),
                    Text(
                      "You Can’t Beat It !!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    ),
                     SizedBox(
                      height: 20.h,
                    ),

                    CustomButton(title: "Subscribe", onpressed: onpress),

                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              );
           
}

Widget customSubsListTile(title) {
  return ListTile(
    leading: const Icon(
      Icons.check,
      color: Colors.white,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      ),
    ),
  );
}
