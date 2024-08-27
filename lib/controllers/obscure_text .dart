import 'package:get/get.dart';

class obscureTextController extends GetxController {
  RxBool obscureText=true.obs;
  void togglePasswordVisibility(){
    obscureText.value=!obscureText.value;
  }
  
}