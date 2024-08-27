import 'package:coup/routes/routes.dart';
import 'package:coup/utils/images.dart';
import 'package:coup/view/base/product_category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../base/custom_status_bar.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    customStatusBar(
    statusBarClr: Colors.white, 
    brightness: Brightness.dark);
       return Scaffold(
      backgroundColor: Colors.white,
      
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,

    
        title: const Text("Favourites Deals"),
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
                        return customProductCategory("20% Off Any 1/2 Jerk Meal With a Drink", "Pepper Grill & Bar", AppImages.product2, "Save \$2", (){
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
          }
          
           ),
      ),
      
      
    );
 

  }
}