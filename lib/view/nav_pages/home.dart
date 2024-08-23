import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/product_category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.sp, left: 25.w, right: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello👋",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600, color: Color(0xFF414141)),
                    ),
                    SizedBox(
                      height: 2.h,                  ),
                    Text(
                      "Henry Johnson",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: const Color(0xFF1F8D84),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Explore Your Deals!!",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: Color(0xFF414141),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customCategory(AppImages.foodImg, "Food",()=>Get.toNamed(Routes.foodPage)),
                          customCategory(AppImages.nightLifeImg, "Night Life",()=>Get.toNamed(Routes.nightLife)),
                          customCategory(AppImages.activityImg, "Activity", ()=>Get.toNamed(Routes.activityS)),
                          customCategory(AppImages.eventImg, "Events", ()=>Get.toNamed(Routes.events)),
                        ],
                      ),
                    ),
              
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Deals",
                          style: TextStyle(color: Color(0xFF414141),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
      
                        TextButton(onPressed: (){
                          Get.toNamed(Routes.popularDeals);
                        }, child:   Text(
                          "View all",
                          style: TextStyle(
                            color: AppColors.primaryClr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                     )
              
                       
                     
                      ],
                    ),
                 
                  ],
                ),
              ),
      
               
                    Container(
                      padding: EdgeInsets.only( top: 15.h, left: 15.w
            ),
                      height: 226.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        
                        itemBuilder: (context, index){
                          return customProductCategory("20% Off Any 1/2 Jerk Meal With a Drink", "Pepper Grill & Bar", AppImages.foodImg, "Save \$2", (){
                            Get.toNamed(Routes.dettailsPage,
                            arguments: {
                              "img":AppImages.product1,
                              "title":"20% Off Any 1/2 Jerk Meal With a Drink",
                              "location":"115B Printer Way",
                              "des": "Get a free wrap and Drink with any order of a bowl. Press redeem and show this Coupy Deal to a staff member to redeem.",
                              "price":"Save \$2"
                            }
                            );
                          });
                        }),
                    ),
      
                       SizedBox(
                      height: 15.sp,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Food",
                            style: TextStyle(color: Color(0xFF414141),
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w500,
                            ),
                          ),
                                  
                               TextButton(onPressed: (){
                          Get.toNamed(Routes.foodPage);
                        }, child:   Text(
                          "View all",
                          style: TextStyle(
                            color: AppColors.primaryClr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                     )
                        ],
                      ),
                    ),
      
                              Container(
                      padding: EdgeInsets.only( top: 13.h, left: 15.w
            ),
                      height: 225.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        
                        itemBuilder: (context, index){
                          return customProductCategory("20% Off Any 1/2 Jerk Meal With a Drink", "Pepper Grill & Bar", AppImages.product1, "Save \$2", (){
      
                              Get.toNamed(Routes.dettailsPage,
                            arguments: {
                              "img":AppImages.product2,
                              "title":"20% Off Any 1/2 Jerk Meal With a Drink",
                              "location":"115B Printer Way",
                              "des": "Get a free wrap and Drink with any order of a bowl. Press redeem and show this Coupy Deal to a staff member to redeem.",
                              "price":"Save \$2"
                            }
                            );
                          });
                        }),
                    ),
      
             
                 
              
               
            ],
          ),
        ),
      ),
    );
  }
}

Widget customCategory(img, title, ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      child: Column(
        children: [
          Image.asset(
            img,
            height: 50.sp,
            width: 50.sp,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF414141)),
          )
        ],
      ),
    ),
  );
}


