import 'package:coup/utils/colors.dart';
import 'package:coup/view/nav_pages/explore.dart';
import 'package:coup/view/nav_pages/favourites.dart';
import 'package:coup/view/nav_pages/home.dart';
import 'package:coup/view/nav_pages/profile.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  RxInt _cureentIndex = 0.obs;
  final _pages = [
    HomeScreen(),
    ExploreScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: _pages[_cureentIndex.value],
        bottomNavigationBar: FloatingNavbar(
            fontSize: 16.sp,
            iconSize: 28.sp,
            backgroundColor: Colors.transparent,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            selectedBackgroundColor: AppColors.primaryClr,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
              FloatingNavbarItem(
                  icon: Icons.favorite_outline, title: 'Favourite'),
              FloatingNavbarItem(icon: Icons.person, title: 'Account'),
            ],
            currentIndex: _cureentIndex.value,
            onTap: (val) {
              _cureentIndex.value = val;
            })));
  }
}
