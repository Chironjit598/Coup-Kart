import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassController extends GetxController {
  TextEditingController passController=TextEditingController();
  TextEditingController confirmPassController=TextEditingController();

  RxBool obscureText = true.obs;
 
 
  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }  
}