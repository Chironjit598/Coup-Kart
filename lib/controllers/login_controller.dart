
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
   TextEditingController loginEmailController=TextEditingController();
    TextEditingController loginPassController=TextEditingController();
    var isChecked=false.obs;

  RxBool obscureText=true.obs;
  void togglePasswordVisibility(){
    obscureText.value=!obscureText.value;
  }

    
  void toggleCheckBox(value){
    isChecked.value=value;
  }

  
}
