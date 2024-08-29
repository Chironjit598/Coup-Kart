import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassController extends GetxController {
  TextEditingController passController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController reNewPassController = TextEditingController();

  RxBool obscureText = true.obs;
 
 
  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }
}
