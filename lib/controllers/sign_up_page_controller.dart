import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  RxBool isChecked = false.obs;
  RxBool obscureText = true.obs;
 
 
  void togglePasswordVisibility() {
    obscureText.value = !obscureText.value;
  }

  void toggleCheckBox(value) {
    isChecked.value = value;
  }
}
