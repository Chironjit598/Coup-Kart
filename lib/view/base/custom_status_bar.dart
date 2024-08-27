import 'package:flutter/services.dart';

customStatusBar({required statusBarClr, required brightness}) {
  SystemChrome.setSystemUIOverlayStyle( 
    SystemUiOverlayStyle(
    statusBarColor: statusBarClr,
    statusBarIconBrightness: brightness,
  ));
}
