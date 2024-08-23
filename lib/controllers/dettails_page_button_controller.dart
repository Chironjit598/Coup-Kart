
import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';


class DettailsPageButtonController extends GetxController{
 RxInt redemCount=1.obs;
 RxString buttonName="Redeem 🎉".obs;
 var buttonClr=AppColors.blackClr.obs;


 updateButtonName(){
  buttonName.value="Staff Member Confirm 🎉";
 }

 updateButtonColor(){
  buttonClr.value=Color(0xFF606060);
 }


 handleButtonPress(context, ){
  if (buttonName.value=="Redeem 🎉" && redemCount.value>0) {
    customBottomSheet(context, (){
updateButtonName();
      Get.back();
    });
    
  }else if(buttonName.value=="Staff Member Confirm 🎉" && redemCount.value>0){
    updateButtonColor();
    buttonName="Redeem 🎉".obs;
    redemCount--;

  }
 }

}