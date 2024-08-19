import 'package:carousel_slider/carousel_slider.dart';
import 'package:coup/controllers/onbordind_controller.dart';
import 'package:coup/routes/routes.dart';
import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_button.dart';
import 'package:coup/view/base/onbording_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnbordingScreens extends StatelessWidget {
  OnbordingScreens({super.key});

  final OnbordingController onbordingController =
      Get.put(OnbordingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            
              carouselController: onbordingController.carouselController,
              items: onbordingController.pages
                  .map((e) => OnbordingSlider(
                      img: e.img,
                      titleOne: e.titleOne,
                      titleTwo: e.titleTwo,
                      des: e.des,
                      pageIndex: onbordingController.pages.indexOf(e),
                  
                      ))
                  .toList(),
              options: CarouselOptions(
               height: double.maxFinite,
               
               
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  onbordingController.currentindex.value = index;
                },
                scrollDirection: Axis.horizontal,
              )),

              Positioned(
                bottom: 55.h,
                child: Container(
                  width: 393.w,
               
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                         Obx(()=>AnimatedSmoothIndicator(
                                           activeIndex: onbordingController.currentindex.value,
                                           count: onbordingController.pages.length,
                                           effect: const WormEffect(
                                             activeDotColor: AppColors.primaryClr,
                                           ),
                                )),
                                SizedBox(
                                  height: 30.h,
                                ),

                                CustomButton(title: "Get Started",onpressed:  ()=>Get.toNamed(Routes.login))
                  
                    ],
                               ),
                ))

           
        ],
      ),
    );
  }
}
