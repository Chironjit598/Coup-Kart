import 'package:coup/utils/colors.dart';
import 'package:coup/view/base/custom_status_bar.dart';
import 'package:coup/view/base/custom_text_field.dart';
import 'package:coup/view/base/explore_custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late GoogleMapController mapController;

  final LatLng _center =
      const LatLng(23.8103, 90.4125); // Example: Dhaka, Bangladesh

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    customStatusBar(
    statusBarClr: Colors.white, 
    brightness: Brightness.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Explore"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: customTextField(TextInputType.text, context, "Search For Places",
                  (val) {
                if (val.isEmpty) {
                  return 'this field can\'t be empty';
                }
              }, prefixIcon: Icons.search),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              height: 240.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
            ),
        
             SizedBox(
                  height: 10.w,
                  
                ),
        
            Row(
              children: [ 
                SizedBox(
                  width: 20.w,
                  
                ),
                Icon(Icons.location_on_outlined, size: 35.sp,color: AppColors.primaryClr,),
                
                SizedBox(
                  width: 5.w,
                ),
                Text("Trending Places",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackClr,
        
                ),
                ),
        
               
              ],
            ),
        
            customExploreTextItem("Cayman Brac ", (){}),
             customExploreTextItem("Pico Taqueria", (){}),
              customExploreTextItem("Peppers ", (){}),
               customExploreTextItem("Rubis  ", (){}),
                customExploreTextItem("Al La Kebabs", (){}),
        
          ],
        ),
      ),
    );
  }
}



