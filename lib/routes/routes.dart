import 'package:coup/view/auth/forget_password.dart';
import 'package:coup/view/auth/login.dart';
import 'package:coup/view/auth/otp.dart';
import 'package:coup/view/auth/reset_password_screen.dart';
import 'package:coup/view/auth/sign_up.dart';
import 'package:coup/view/home_screen.dart/activity.dart';
import 'package:coup/view/home_screen.dart/dettails_page.dart';
import 'package:coup/view/home_screen.dart/events.dart';
import 'package:coup/view/home_screen.dart/food_pages.dart';
import 'package:coup/view/home_screen.dart/night_life.dart';
import 'package:coup/view/home_screen.dart/popular_deals.dart';
import 'package:coup/view/profile_info_pages/information_edit.dart';
import 'package:coup/view/profile_info_pages/profile_information.dart';
import 'package:coup/view/profile_info_pages/subscription_pages.dart';
import 'package:coup/view/screens/bottom_nav_bar.dart';
import 'package:coup/view/screens/onbording_screen.dart';
import 'package:coup/view/screens/splash.dart';
import 'package:coup/view/settings_pages/change_pass.dart';
import 'package:coup/view/settings_pages/settings.dart';
import 'package:get/get.dart';

class Routes {
  static const String splash = "/splash-screen";
  static const String onbording = "/onbording-screen";
  static const String login = "/login-page";
  static const String forgetScreen = "/forget-screen";
  static const String otpScreen = "/otp-screen";
  static const String resetPassScreen = "/reset-pass-screen";
  static const String signUp = "/sign-up-screen";
  static const String bottoNavBar = "/bottom-nav-screen";
  static const String profileInfo = "/profile-info-screen";
  static const String infoEditPage = "/info-edit-screen";
  static const String settingPage = "/setting-page-screen";
  static const String changePass = "/change-pass-screen";
  static const String popularDeals = "/popular-deals-screen";
  static const String foodPage = "/food-page";
  static const String nightLife = "/night-life-screen";
  static const String activityS = "/activity-screen";
  static const String events = "/events-screen";
  static const String dettailsPage = "/dettails-screen";
    static const String subscription = "/subscription-screen";

}

List<GetPage> pages = [
  GetPage(name: Routes.splash, page: () => const SplashScreen()),
  GetPage(name: Routes.onbording, page: () => OnbordingScreens()),
  GetPage(name: Routes.login, page: () => LoginPage()),
  GetPage(name: Routes.forgetScreen, page: () => ForgetPasswordPage()),
  GetPage(name: Routes.otpScreen, page: () => OTPScreen()),
  GetPage(name: Routes.resetPassScreen, page: () => ResetPasswordPage()),
  GetPage(name: Routes.signUp, page: () => SignUpPage()),
  GetPage(name: Routes.bottoNavBar, page: () => BottomNavBar()),
  GetPage(name: Routes.profileInfo, page: () => ProfileInformationPage()),
  GetPage(name: Routes.infoEditPage, page: () => InformationEditPage()),
  GetPage(name: Routes.settingPage, page: () => SettingsPage()),
  GetPage(name: Routes.changePass, page: () => ChangePassScreen()),
  GetPage(name: Routes.popularDeals, page: () => PopularDealPage()),
  GetPage(name: Routes.foodPage, page: () => FoodPages()),
  GetPage(name: Routes.nightLife, page: () => NightLifePages()),
  GetPage(name: Routes.events, page: () => EventsPages()),
  GetPage(name: Routes.activityS, page: () => ActivityPages()),
  GetPage(name: Routes.dettailsPage, page: () => DettailsPage()),
    GetPage(name: Routes.subscription, page: () => SubscriptionPage()),

];
