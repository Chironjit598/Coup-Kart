import 'package:carousel_slider/carousel_slider.dart';
import 'package:coup/model/onbording_model.dart';
import 'package:coup/utils/images.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  RxInt currentindex=0.obs;
 CarouselController carouselController = CarouselController();

 final List<OnbordingModel> pages = [
    OnbordingModel(
      titleOne: "WELCOME TO COUP",
      titleTwo: "KART",
      des:
          "Get more and more hot deals and discounts on food and restuarant near you !",
      img: AppImages.onbordingImg1,
    ),
    OnbordingModel(
      titleOne: "Enjoy your",
      titleTwo: " NIGHT",
      des: "Get more and more hot deals and discounts near you !",
      img: AppImages.onbordingImg2,
    ),
    OnbordingModel(
      titleOne: "Great Deals on",
      titleTwo: " Activity",
      des: "Get more and more hot deals and discounts near you !",
      img: AppImages.onbordingImg3,
    ),
    OnbordingModel(
      titleOne: "Enjoy Events In",
      titleTwo: " Least cost",
      des: "Get more and more hot deals and discounts near you !",
      img: AppImages.onbordingImg4,
    ),

  ];

 void autoSlide(){
  if (currentindex.value<pages.length-1) {
    carouselController.nextPage();
    Future.delayed(const Duration(milliseconds: 800), autoSlide);
    
  }
 }

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Future.delayed(const Duration(milliseconds: 800), autoSlide);
  }
}