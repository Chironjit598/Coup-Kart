import 'package:coup/utils/images.dart';
import 'package:coup/view/base/product_category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PopularDealPage extends StatelessWidget {
  const PopularDealPage({super.key});

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
        title: const Text("Popular Deals"),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h ),
        child: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
             crossAxisSpacing: 16.0, // Spacing between columns
            mainAxisSpacing: 16.0,
             childAspectRatio: 0.75, 
            
          ), 
          itemBuilder:(context, index){
                        return customProductCategory("20% Off Any 1/2 Jerk Meal With a Drink", "Pepper Grill & Bar", AppImages.product1, "Save \$2", (){});
          }
          
           ),
      ),
      
      
    );
  }
}